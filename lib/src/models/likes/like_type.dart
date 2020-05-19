// File created by
// Lung Razvan <long1eu>
// on 19/05/2020

library like_type;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'like_type.g.dart';

class LikeType extends EnumClass {
  const LikeType._(String name) : super(name);

  static const LikeType comment = _$comment;
  static const LikeType post = _$post;

  static BuiltSet<LikeType> get values => _$values;

  static LikeType valueOf(String name) => _$valueOf(name);

  static Serializer<LikeType> get serializer => _$likeTypeSerializer;
}
