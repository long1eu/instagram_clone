// File created by
// Lung Razvan <long1eu>
// on 27/04/2020

library reserve_username;

import 'package:built_value/built_value.dart';
import 'package:instagram_clone/src/actions/actions.dart';

part 'reserve_username.g.dart';

abstract class ReserveUsername //
    implements
        Built<ReserveUsername, ReserveUsernameBuilder>,
        AppAction //
{
  factory ReserveUsername([void Function(ReserveUsernameBuilder b) updates]) = _$ReserveUsername;

  ReserveUsername._();
}

abstract class ReserveUsernameSuccessful //
    implements
        Built<ReserveUsernameSuccessful, ReserveUsernameSuccessfulBuilder>,
        AppAction //
{
  factory ReserveUsernameSuccessful(String username) {
    return _$ReserveUsernameSuccessful((ReserveUsernameSuccessfulBuilder b) {
      b.username = username;
    });
  }

  ReserveUsernameSuccessful._();

  String get username;
}

abstract class ReserveUsernameError //
    implements
        Built<ReserveUsernameError, ReserveUsernameErrorBuilder>,
        ErrorAction //
{
  factory ReserveUsernameError(Object error) {
    return _$ReserveUsernameError((ReserveUsernameErrorBuilder b) => b.error = error);
  }

  ReserveUsernameError._();

  @override
  Object get error;
}
