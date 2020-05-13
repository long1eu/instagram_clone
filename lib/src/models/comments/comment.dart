// File created by
// Lung Razvan <long1eu>
// on 12/05/2020

library comment;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:instagram_clone/src/models/serializers.dart';
import 'package:meta/meta.dart';

part 'comment.g.dart';

abstract class Comment implements Built<Comment, CommentBuilder>, Comparable<Comment> {
  factory Comment({
    @required String id,
    @required String postId,
    @required String uid,
    @required String text,
  }) {
    return _$Comment((CommentBuilder b) {
      b
        ..id = id
        ..postId = postId
        ..uid = uid
        ..text = text
        ..createdAt = DateTime.now().toUtc();
    });
  }

  factory Comment.fromJson(Map<dynamic, dynamic> json) => serializers.deserializeWith(serializer, json);

  Comment._();

  String get id;

  String get postId;

  String get uid;

  String get text;

  DateTime get createdAt;

  @override
  int compareTo(Comment other) {
    return other.createdAt.compareTo(createdAt);
  }

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this);

  static Serializer<Comment> get serializer => _$commentSerializer;
}
