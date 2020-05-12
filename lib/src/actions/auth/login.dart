// File created by
// Lung Razvan <long1eu>
// on 16/04/2020

library login;

import 'package:built_value/built_value.dart';
import 'package:instagram_clone/src/models/auth/app_user.dart';

import '../actions.dart';

part 'login.g.dart';

abstract class Login //
    implements
        Built<Login, LoginBuilder>,
        AppAction //
{
  factory Login(String email, String password) {
    return _$Login((LoginBuilder b) {
      b
        ..email = email
        ..password = password;
    });
  }

  Login._();

  String get email;

  String get password;
}

abstract class LoginSuccessful //
    implements
        Built<LoginSuccessful, LoginSuccessfulBuilder>,
        UserAction,
        AppAction //
{
  factory LoginSuccessful(AppUser user) {
    return _$LoginSuccessful((LoginSuccessfulBuilder b) {
      b.user = user.toBuilder();
    });
  }

  LoginSuccessful._();

  @override
  AppUser get user;
}

abstract class LoginError //
    implements
        Built<LoginError, LoginErrorBuilder>,
        ErrorAction //
{
  factory LoginError(Object error) {
    return _$LoginError((LoginErrorBuilder b) => b.error = error);
  }

  LoginError._();

  @override
  Object get error;
}
