// GENERATED CODE - DO NOT MODIFY BY HAND

part of like_type;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const LikeType _$comment = const LikeType._('comment');
const LikeType _$post = const LikeType._('post');

LikeType _$valueOf(String name) {
  switch (name) {
    case 'comment':
      return _$comment;
    case 'post':
      return _$post;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<LikeType> _$values = new BuiltSet<LikeType>(const <LikeType>[
  _$comment,
  _$post,
]);

Serializer<LikeType> _$likeTypeSerializer = new _$LikeTypeSerializer();

class _$LikeTypeSerializer implements PrimitiveSerializer<LikeType> {
  @override
  final Iterable<Type> types = const <Type>[LikeType];
  @override
  final String wireName = 'LikeType';

  @override
  Object serialize(Serializers serializers, LikeType object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  LikeType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      LikeType.valueOf(serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
