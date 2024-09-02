// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pet.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Pet extends Pet {
  @override
  final int id;
  @override
  final String name;
  @override
  final String? tag;

  factory _$Pet([void Function(PetBuilder)? updates]) =>
      (new PetBuilder()..update(updates))._build();

  _$Pet._({required this.id, required this.name, this.tag}) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'Pet', 'id');
    BuiltValueNullFieldError.checkNotNull(name, r'Pet', 'name');
  }

  @override
  Pet rebuild(void Function(PetBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PetBuilder toBuilder() => new PetBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Pet &&
        id == other.id &&
        name == other.name &&
        tag == other.tag;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, tag.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Pet')
          ..add('id', id)
          ..add('name', name)
          ..add('tag', tag))
        .toString();
  }
}

class PetBuilder implements Builder<Pet, PetBuilder> {
  _$Pet? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _tag;
  String? get tag => _$this._tag;
  set tag(String? tag) => _$this._tag = tag;

  PetBuilder() {
    Pet._defaults(this);
  }

  PetBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _tag = $v.tag;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Pet other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Pet;
  }

  @override
  void update(void Function(PetBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Pet build() => _build();

  _$Pet _build() {
    final _$result = _$v ??
        new _$Pet._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'Pet', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(name, r'Pet', 'name'),
            tag: tag);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
