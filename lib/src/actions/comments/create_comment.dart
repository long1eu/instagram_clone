// File created by
// Lung Razvan <long1eu>
// on 12/05/2020

library create_comment;

import 'package:built_value/built_value.dart';
import 'package:instagram_clone/src/actions/actions.dart';
import 'package:instagram_clone/src/models/comments/comment.dart';

part 'create_comment.g.dart';

abstract class CreateComment //
    implements
        Built<CreateComment, CreateCommentBuilder>,
        AppAction //
{
  factory CreateComment(String text) {
    return _$CreateComment((CreateCommentBuilder b) {
      b.text = text;
    });
  }

  CreateComment._();

  String get text;
}

abstract class CreateCommentSuccessful //
    implements
        Built<CreateCommentSuccessful, CreateCommentSuccessfulBuilder>,
        AppAction //
{
  factory CreateCommentSuccessful(Comment comment) {
    return _$CreateCommentSuccessful((CreateCommentSuccessfulBuilder b) {
      b.comment = comment.toBuilder();
    });
  }

  CreateCommentSuccessful._();

  Comment get comment;
}

abstract class CreateCommentError //
    implements
        Built<CreateCommentError, CreateCommentErrorBuilder>,
        ErrorAction //
{
  factory CreateCommentError(Object error) {
    return _$CreateCommentError((CreateCommentErrorBuilder b) => b.error = error);
  }

  CreateCommentError._();

  @override
  Object get error;
}
