// File created by
// Lung Razvan <long1eu>
// on 22/04/2020

import 'package:instagram_clone/src/actions/reset_password.dart';
import 'package:instagram_clone/src/models/app_user.dart';

class SignUp {
  const SignUp(this.result);

  final ActionResult result;
}

class SignUpSuccessful {
  const SignUpSuccessful(this.user);

  final AppUser user;
}

class SignUpError {
  const SignUpError(this.error);

  final Object error;
}
