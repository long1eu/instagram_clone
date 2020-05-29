// File created by
// Lung Razvan <long1eu>
// on 29/05/2020

library stop_following;

import 'package:built_value/built_value.dart';
import 'package:instagram_clone/src/actions/actions.dart';

part 'stop_following.g.dart';

abstract class StopFollowing //
    implements
        Built<StopFollowing, StopFollowingBuilder>,
        AppAction //
{
  factory StopFollowing(String followingUid) {
    return _$StopFollowing((StopFollowingBuilder b) => b.followingUid = followingUid);
  }

  StopFollowing._();

  String get followingUid;
}

abstract class StopFollowingSuccessful //
    implements
        Built<StopFollowingSuccessful, StopFollowingSuccessfulBuilder>,
        AppAction //
{
  factory StopFollowingSuccessful(String followingUid) {
    return _$StopFollowingSuccessful((StopFollowingSuccessfulBuilder b) => b.followingUid = followingUid);
  }

  StopFollowingSuccessful._();

  String get followingUid;
}

abstract class StopFollowingError //
    implements
        Built<StopFollowingError, StopFollowingErrorBuilder>,
        ErrorAction //
{
  factory StopFollowingError(Object error) {
    return _$StopFollowingError((StopFollowingErrorBuilder b) => b.error = error);
  }

  StopFollowingError._();

  @override
  Object get error;
}
