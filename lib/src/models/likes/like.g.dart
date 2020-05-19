// GENERATED CODE - DO NOT MODIFY BY HAND

part of like;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Like> _$likeSerializer = new _$LikeSerializer();

class _$LikeSerializer implements StructuredSerializer<Like> {
  @override
  final Iterable<Type> types = const [Like, _$Like];
  @override
  final String wireName = 'Like';

  @override
  Iterable<Object> serialize(Serializers serializers, Like object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'parentId',
      serializers.serialize(object.parentId,
          specifiedType: const FullType(String)),
      'uid',
      serializers.serialize(object.uid, specifiedType: const FullType(String)),
      'createdAt',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(DateTime)),
      'type',
      serializers.serialize(object.type,
          specifiedType: const FullType(LikeType)),
    ];

    return result;
  }

  @override
  Like deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LikeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'parentId':
          result.parentId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(LikeType)) as LikeType;
          break;
      }
    }

    return result.build();
  }
}

class _$Like extends Like {
  @override
  final String id;
  @override
  final String parentId;
  @override
  final String uid;
  @override
  final DateTime createdAt;
  @override
  final LikeType type;

  factory _$Like([void Function(LikeBuilder) updates]) =>
      (new LikeBuilder()..update(updates)).build();

  _$Like._({this.id, this.parentId, this.uid, this.createdAt, this.type})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('Like', 'id');
    }
    if (parentId == null) {
      throw new BuiltValueNullFieldError('Like', 'parentId');
    }
    if (uid == null) {
      throw new BuiltValueNullFieldError('Like', 'uid');
    }
    if (createdAt == null) {
      throw new BuiltValueNullFieldError('Like', 'createdAt');
    }
    if (type == null) {
      throw new BuiltValueNullFieldError('Like', 'type');
    }
  }

  @override
  Like rebuild(void Function(LikeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LikeBuilder toBuilder() => new LikeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Like &&
        id == other.id &&
        parentId == other.parentId &&
        uid == other.uid &&
        createdAt == other.createdAt &&
        type == other.type;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, id.hashCode), parentId.hashCode), uid.hashCode),
            createdAt.hashCode),
        type.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Like')
          ..add('id', id)
          ..add('parentId', parentId)
          ..add('uid', uid)
          ..add('createdAt', createdAt)
          ..add('type', type))
        .toString();
  }
}

class LikeBuilder implements Builder<Like, LikeBuilder> {
  _$Like _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _parentId;
  String get parentId => _$this._parentId;
  set parentId(String parentId) => _$this._parentId = parentId;

  String _uid;
  String get uid => _$this._uid;
  set uid(String uid) => _$this._uid = uid;

  DateTime _createdAt;
  DateTime get createdAt => _$this._createdAt;
  set createdAt(DateTime createdAt) => _$this._createdAt = createdAt;

  LikeType _type;
  LikeType get type => _$this._type;
  set type(LikeType type) => _$this._type = type;

  LikeBuilder();

  LikeBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _parentId = _$v.parentId;
      _uid = _$v.uid;
      _createdAt = _$v.createdAt;
      _type = _$v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Like other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Like;
  }

  @override
  void update(void Function(LikeBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Like build() {
    final _$result = _$v ??
        new _$Like._(
            id: id,
            parentId: parentId,
            uid: uid,
            createdAt: createdAt,
            type: type);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
