// File created by
// Lung Razvan <long1eu>
// on 15/04/2020

/*
import 'package:instagram_clone/src/actions/actions.dart';
import 'package:instagram_clone/src/models/app_user.dart';

class InitializeApp implements AppAction {}

class InitializeAppSuccessful implements AppAction {
  const InitializeAppSuccessful(this.user);

  final AppUser user;
}

class InitializeAppError implements ErrorAction {
  const InitializeAppError(this.error);

  @override
  final Object error;
}
*/

library initialize_app;

import 'package:built_value/built_value.dart';
import 'package:instagram_clone/src/actions/actions.dart';
import 'package:instagram_clone/src/models/auth/app_user.dart';

part 'initialize_app.g.dart';

abstract class InitializeApp //
    implements
        Built<InitializeApp, InitializeAppBuilder>,
        AppAction //
{
  factory InitializeApp([void Function(InitializeAppBuilder b) updates]) = _$InitializeApp;

  InitializeApp._();
}

abstract class InitializeAppSuccessful //
    implements
        Built<InitializeAppSuccessful, InitializeAppSuccessfulBuilder>,
        UserAction,
        AppAction //
{
  factory InitializeAppSuccessful(AppUser user) {
    return _$InitializeAppSuccessful((InitializeAppSuccessfulBuilder b) {
      b.user = user?.toBuilder();
    });
  }

  InitializeAppSuccessful._();

  @override
  @nullable
  AppUser get user;
}

abstract class InitializeAppError //
    implements
        Built<InitializeAppError, InitializeAppErrorBuilder>,
        ErrorAction //
{
  factory InitializeAppError(Object error) {
    return _$InitializeAppError((InitializeAppErrorBuilder b) => b.error = error);
  }

  InitializeAppError._();

  @override
  Object get error;
}
