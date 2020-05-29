// File created by
// Lung Razvan <long1eu>
// on 29/05/2020

library start_following;

import 'package:built_value/built_value.dart';
import 'package:instagram_clone/src/actions/actions.dart';

part 'start_following.g.dart';

abstract class StartFollowing //
    implements
        Built<StartFollowing, StartFollowingBuilder>,
        AppAction //
{
  factory StartFollowing(String followingUid) {
    return _$StartFollowing((StartFollowingBuilder b) {
      b.followingUid = followingUid;
    });
  }

  StartFollowing._();

  String get followingUid;
}

abstract class StartFollowingSuccessful //
    implements
        Built<StartFollowingSuccessful, StartFollowingSuccessfulBuilder>,
        AppAction //
{
  factory StartFollowingSuccessful(String followingUid) {
    return _$StartFollowingSuccessful((StartFollowingSuccessfulBuilder b) {
      b.followingUid = followingUid;
    });
  }

  StartFollowingSuccessful._();

  String get followingUid;
}

abstract class StartFollowingError //
    implements
        Built<StartFollowingError, StartFollowingErrorBuilder>,
        ErrorAction //
{
  factory StartFollowingError(Object error) {
    return _$StartFollowingError((StartFollowingErrorBuilder b) => b.error = error);
  }

  StartFollowingError._();

  @override
  Object get error;
}
