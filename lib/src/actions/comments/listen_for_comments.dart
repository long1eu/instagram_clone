// File created by
// Lung Razvan <long1eu>
// on 13/05/2020

library listen_for_comments;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:instagram_clone/src/actions/actions.dart';
import 'package:instagram_clone/src/models/comments/comment.dart';

part 'listen_for_comments.g.dart';

abstract class ListenForComments //
    implements
        Built<ListenForComments, ListenForCommentsBuilder>,
        AppAction //
{
  factory ListenForComments([void Function(ListenForCommentsBuilder b) updates]) = _$ListenForComments;

  ListenForComments._();
}

abstract class StopListenForComments //
    implements
        Built<StopListenForComments, StopListenForCommentsBuilder>,
        AppAction //
{
  factory StopListenForComments([void Function(StopListenForCommentsBuilder b) updates]) = _$StopListenForComments;

  StopListenForComments._();
}

abstract class OnCommentsEvent //
    implements
        Built<OnCommentsEvent, OnCommentsEventBuilder>,
        AppAction //
{
  factory OnCommentsEvent(List<Comment> comments) {
    return _$OnCommentsEvent((OnCommentsEventBuilder b) {
      b.comments = ListBuilder<Comment>(comments);
    });
  }

  OnCommentsEvent._();

  BuiltList<Comment> get comments;
}

abstract class ListenForCommentsError //
    implements
        Built<ListenForCommentsError, ListenForCommentsErrorBuilder>,
        ErrorAction //
{
  factory ListenForCommentsError(Object error) {
    return _$ListenForCommentsError((ListenForCommentsErrorBuilder b) => b.error = error);
  }

  ListenForCommentsError._();

  @override
  Object get error;
}
