// ignore_for_file: library_private_types_in_public_api

import 'dart:convert';

import 'package:beneficiary/base/data/stock/disk_serializer.dart';
import 'package:stock/stock.dart';

typedef MemoryCache<Key, Value> = CachedSourceOfTruth<Key, Value>;
typedef CacheKeyMapper<InputKey, OutputKey> = OutputKey Function(InputKey);

/// Base App Disk Cache
abstract class AppDiskCache extends CachedSourceOfTruth<String, String> {
  /// function to key all cached items keys by [keyPrefix].
  Future<List<String>> getKeysByPrefix(String keyPrefix);

  /// add bridge `type transformer` over hive cache.
  ///
  /// to communicate with [Output] type instead of [String] type.
  /// [keyToString] : convertor from [Key] type to [String] type.
  /// [toJson] : convertor from [Output] type to [Map] type.
  /// [fromJson] : convertor from [Map] type to [Output] type.
  /// [keyFetcher] : fetcher for all keys with specific prefix.
  SourceOfTruth<Key, Output> createStringBridge<Key, Output>(
    Map<String, dynamic> Function(Output networkModel) toJson,
    Output? Function(Map<String, dynamic>? databaseJson) fromJson,
    String Function(Key key) keyToString,
    Future<List<String>> Function() keyFetcher,
  ) =>
      SourceOfTruth<Key, Output>(
        reader: (key) => reader(keyToString(key)).map(
          (value) => fromJson(value == null ? null : jsonDecode(value)),
        ),
        writer: (key, value) => write(
          keyToString(key),
          value == null ? null : jsonEncode(toJson(value)),
        ),
        delete: (key) => delete(keyToString(key)),
        deleteAll: () async {
          final keysForDelete = await keyFetcher();
          for (final key in keysForDelete) {
            await delete(key);
          }
        },
      );

  _DiskCache<Key, Value> createCache<Key, Value>({
    required String keyPrefix,
    required DiskSerializer<Value> serializer,
    CacheKeyMapper<Key, String>? keyMapper,
  }) =>
      _DiskCache(
          keyPrefix: keyPrefix,
          keyMapper: keyMapper,
          serializer: serializer,
          stringSourceOfTruth: this);
}

/// base local cache source that take [String] based cache and convert it to
/// [Value] type base.
///
/// [keyPrefix] : prefix key to distinguish between other types in cache.
/// [keyToString]: transformer from [Key] to [String].
/// [toDisk] : transformer from [Value] to [Map].
/// [fromDisk] : transformer from [Map] to [Value].
class _DiskCache<Key, Value> implements SourceOfTruth<Key, Value> {
  _DiskCache({
    required String keyPrefix,
    required DiskSerializer<Value> serializer,
    required AppDiskCache stringSourceOfTruth,
    CacheKeyMapper<Key, String>? keyMapper,
  }) : _mappedCache = stringSourceOfTruth.createStringBridge(
          serializer.toDisk,
          serializer.fromDisk,
          (key) => '${keyPrefix}_${keyMapper?.call(key) ?? key.toString()}',
          () => stringSourceOfTruth.getKeysByPrefix(keyPrefix),
        );

  final SourceOfTruth<Key, Value> _mappedCache;

  @override
  Stream<Value?> reader(Key key) => _mappedCache.reader(key);

  @override
  Future<void> write(Key key, Value? value) => _mappedCache.write(key, value);

  @override
  Future<void> delete(Key key) => _mappedCache.delete(key);

  @override
  Future<void> deleteAll() => _mappedCache.deleteAll();
}
