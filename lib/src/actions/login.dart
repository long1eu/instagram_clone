// File created by
// Lung Razvan <long1eu>
// on 16/04/2020

import 'package:instagram_clone/src/models/app_user.dart';

class Login {
  const Login(this.email, this.password);

  final String email;
  final String password;
}

class LoginSuccessful {
  const LoginSuccessful(this.user);

  final AppUser user;
}

class LoginError {}
