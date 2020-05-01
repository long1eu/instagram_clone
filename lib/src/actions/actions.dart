// File created by
// Lung Razvan <long1eu>
// on 30/04/2020

import 'package:instagram_clone/src/models/app_user.dart';

abstract class AppAction {}

abstract class ErrorAction extends AppAction {
  Object get error;
}

typedef ActionResult = void Function(dynamic action);

abstract class UserAction implements AppAction {
  AppUser get user;
}
