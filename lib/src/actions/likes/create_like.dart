// File created by
// Lung Razvan <long1eu>
// on 20/05/2020

library create_like;

import 'package:built_value/built_value.dart';
import 'package:instagram_clone/src/actions/actions.dart';
import 'package:instagram_clone/src/models/likes/like.dart';
import 'package:instagram_clone/src/models/likes/like_type.dart';

part 'create_like.g.dart';

abstract class CreateLike //
    implements
        Built<CreateLike, CreateLikeBuilder>,
        AppAction //
{
  factory CreateLike(String parentId, LikeType type) {
    return _$CreateLike((CreateLikeBuilder b) {
      b
        ..parentId = parentId
        ..type = type;
    });
  }

  CreateLike._();

  String get parentId;

  LikeType get type;
}

abstract class CreateLikeSuccessful //
    implements
        Built<CreateLikeSuccessful, CreateLikeSuccessfulBuilder>,
        AppAction //
{
  factory CreateLikeSuccessful(Like like) {
    return _$CreateLikeSuccessful((CreateLikeSuccessfulBuilder b) => b.like = like.toBuilder());
  }

  CreateLikeSuccessful._();

  Like get like;
}

abstract class CreateLikeError //
    implements
        Built<CreateLikeError, CreateLikeErrorBuilder>,
        AppAction,
        ErrorAction //
{
  factory CreateLikeError(Object error) {
    return _$CreateLikeError((CreateLikeErrorBuilder b) => b.error = error);
  }

  CreateLikeError._();

  @override
  Object get error;
}
