import 'dart:convert';

import 'package:dart_kit/dart_kit.dart';

typedef ToDiskMapper<T> = Map<String, dynamic> Function(T json);
typedef FromDiskNullableMapper<T> = T? Function(Map<String, dynamic>? model);
typedef FromDiskMapper<T> = T Function(Map<String, dynamic> model);
typedef NullDiskDataMapper<T> = T? Function();

/// helper class to create serializer object for each data type.
///
/// disk data type can be
/// 1) [_SingleType] : for any individual type (not array and not primitive) like UserModel.
/// 2) [_ListType] : for list data type like List<UserModel>.
/// 2) [_PrimitiveType] : for primitive data type and list of primitive types like int, String, List<String>, double, etc..
///
abstract class DiskSerializer<Value> {
  DiskSerializer._({
    required this.toDisk,
    required this.fromDisk,
    this.nullMapper,
  });

  factory DiskSerializer.forSingle({
    required ToDiskMapper<Value> toDisk,
    required FromDiskMapper<Value> fromDisk,
    NullDiskDataMapper<Value>? nullMapper,
  }) = _SingleType<Value>;

  factory DiskSerializer.forPrimitive({
    String Function(Value)? toDisk,
    Value Function(String)? fromDisk,
    NullDiskDataMapper<Value>? nullMapper,
  }) = _PrimitiveType<Value>;

  static DiskSerializer<List<Value>> forList<Value>({
    required ToDiskMapper<Value> toDisk,
    required FromDiskMapper<Value> fromDisk,
    NullDiskDataMapper<Value>? nullMapper,
  }) =>
      _ListType<Value>(toDisk: toDisk, fromDisk: fromDisk);

  static DiskSerializer<List<Value>> forListOfPrimitive<Value>({
    String Function(Value)? toDisk,
    Value Function(String)? fromDisk,
    NullDiskDataMapper<Value>? nullMapper,
  }) =>
      _PrimitiveListType<Value>(toDisk: toDisk, fromDisk: fromDisk);

  final ToDiskMapper<Value> toDisk;
  final FromDiskNullableMapper<Value> fromDisk;
  final NullDiskDataMapper<Value>? nullMapper;
}

class _SingleType<Value> extends DiskSerializer<Value> {
  _SingleType({
    required super.toDisk,
    required FromDiskMapper fromDisk,
    super.nullMapper,
  }) : super._(
          fromDisk: (diskData) =>
              diskData == null ? nullMapper?.call() : fromDisk(diskData),
        );
}

class _ListType<Value> extends DiskSerializer<List<Value>> {
  _ListType({
    required ToDiskMapper<Value> toDisk,
    required FromDiskMapper<Value> fromDisk,
    super.nullMapper,
  }) : super._(
          toDisk: (models) =>
              {'values': models.map((it) => toDisk(it)).toList()},
          fromDisk: (diskData) => diskData == null
              ? nullMapper?.call()
              : diskData
                  .let((Map<String, dynamic> it) =>
                      diskData['values'] as List<dynamic>)
                  .map((it) => fromDisk(it)!)
                  .toList(),
        );
}

class _PrimitiveType<Value> extends DiskSerializer<Value> {
  _PrimitiveType({
    String Function(Value)? toDisk,
    Value Function(String)? fromDisk,
    super.nullMapper,
  }) : super._(
          toDisk: (model) => {
            'value': toDisk?.call(model) ?? jsonEncode(model),
          },
          fromDisk: (diskData) => diskData == null
              ? nullMapper?.call()
              : (diskData['value'] as String)
                  .let((String it) => fromDisk?.call(it) ?? it as Value),
        );
}

class _PrimitiveListType<Value> extends DiskSerializer<List<Value>> {
  _PrimitiveListType({
    String Function(Value)? toDisk,
    Value Function(String)? fromDisk,
    super.nullMapper,
  }) : super._(
          toDisk: (models) =>
              {'values': models.map((it) => toDisk?.call(it) ?? it).toList()},
          fromDisk: (diskData) => diskData == null
              ? nullMapper?.call()
              : diskData
                  .let((Map<String, dynamic> it) =>
                      diskData['values'] as List<dynamic>)
                  .map((it) => fromDisk?.call(it) ?? it as Value)
                  .toList(),
        );
}
