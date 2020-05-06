// File created by
// Lung Razvan <long1eu>
// on 16/04/2020

library reset_password;

import 'package:built_value/built_value.dart';
import 'package:instagram_clone/src/actions/actions.dart';

part 'reset_password.g.dart';

abstract class ResetPassword //
    implements
        Built<ResetPassword, ResetPasswordBuilder>,
        AppAction //
{
  factory ResetPassword(String email, ActionResult result) {
    return _$ResetPassword((ResetPasswordBuilder b) {
      b
        ..email = email
        ..result = result;
    });
  }

  ResetPassword._();

  String get email;

  ActionResult get result;
}

abstract class ResetPasswordSuccessful //
    implements
        Built<ResetPasswordSuccessful, ResetPasswordSuccessfulBuilder>,
        AppAction //
{
  factory ResetPasswordSuccessful([void Function(ResetPasswordSuccessfulBuilder b) updates]) =
      _$ResetPasswordSuccessful;

  ResetPasswordSuccessful._();
}

abstract class ResetPasswordError //
    implements
        Built<ResetPasswordError, ResetPasswordErrorBuilder>,
        ErrorAction //
{
  factory ResetPasswordError(Object error) {
    return _$ResetPasswordError((ResetPasswordErrorBuilder b) => b.error = error);
  }

  ResetPasswordError._();

  @override
  Object get error;
}
