// File created by
// Lung Razvan <long1eu>
// on 19/05/2020

library like;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:instagram_clone/src/models/likes/like_type.dart';
import 'package:instagram_clone/src/models/serializers.dart';
import 'package:meta/meta.dart';

part 'like.g.dart';

abstract class Like implements Built<Like, LikeBuilder> {
  factory Like({
    @required String id,
    @required String parentId,
    @required String uid,
    @required LikeType type,
  }) {
    return _$Like((LikeBuilder b) {
      b
        ..id = id
        ..parentId = parentId
        ..uid = uid
        ..createdAt = DateTime.now().toUtc()
        ..type = type;
    });
  }

  factory Like.fromJson(Map<dynamic, dynamic> json) => serializers.deserializeWith(serializer, json);

  Like._();

  String get id;

  String get parentId;

  String get uid;

  DateTime get createdAt;

  LikeType get type;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this);

  static Serializer<Like> get serializer => _$likeSerializer;
}
