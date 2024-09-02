import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';
import 'package:beneficiary/base/data/stock/app_disk_cache.dart';

/// Hive version of [AppDiskCache], Fast key-value database for caching.
///
/// save all data as [String] with [String] key.
/// [_box] : Cache Box that contain all of application cache data.
class HiveDiskCache extends AppDiskCache {
  HiveDiskCache(this._box);

  final Box _box;

  @override
  @protected
  Stream<String?> reader(String key) async* {
    final String? value = _box.get(key);
    setCachedValue(key, value);
    yield* super.reader(key);
  }

  @override
  @protected
  Future<void> write(String key, String? value) async {
    await _box.put(key, value);
    await super.write(key, value);
  }

  @override
  @protected
  Future<void> delete(String key) async {
    await _box.delete(key);
    await super.delete(key);
  }

  @override
  Future<List<String>> getKeysByPrefix(String keyPrefix) async => _box.keys
      .where((it) => (it as String?)?.startsWith(keyPrefix) == true)
      .map((it) => it as String)
      .toList();
}
