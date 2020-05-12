// File created by
// Lung Razvan <long1eu>
// on 12/05/2020

library comments_state;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:instagram_clone/src/models/comments/comment.dart';
import 'package:instagram_clone/src/models/serializers.dart';

part 'comments_state.g.dart';

abstract class CommentsState implements Built<CommentsState, CommentsStateBuilder> {
  factory CommentsState([void Function(CommentsStateBuilder b) updates]) = _$CommentsState;

  factory CommentsState.fromJson(Map<dynamic, dynamic> json) => serializers.deserializeWith(serializer, json);

  CommentsState._();

  BuiltList<Comment> get comments;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this);

  static Serializer<CommentsState> get serializer => _$commentsStateSerializer;
}
