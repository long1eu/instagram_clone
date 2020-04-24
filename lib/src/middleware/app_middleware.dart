// File created by
// Lung Razvan <long1eu>
// on 15/04/2020

import 'package:instagram_clone/src/actions/initialize_app.dart';
import 'package:instagram_clone/src/actions/login.dart';
import 'package:instagram_clone/src/actions/logout.dart';
import 'package:instagram_clone/src/actions/reset_password.dart';
import 'package:instagram_clone/src/actions/signup.dart';
import 'package:instagram_clone/src/data/auth_api.dart';
import 'package:instagram_clone/src/models/app_state.dart';
import 'package:instagram_clone/src/models/app_user.dart';
import 'package:meta/meta.dart';
import 'package:redux/redux.dart';

class AppMiddleware extends MiddlewareClass<AppState> {
  AppMiddleware({@required this.authApi});

  final AuthApi authApi;

  @override
  Future<void> call(Store<AppState> store, dynamic action, NextDispatcher next) async {
    next(action);

    if (action is InitializeApp) {
      final AppUser user = await authApi.getUser();
      store.dispatch(InitializeAppSuccessful(user));
    } else if (action is Login) {
      final AppUser user = await authApi.login(action.email, action.password);
      store.dispatch(LoginSuccessful(user));
    } else if (action is Logout) {
      await authApi.logOut();
      store.dispatch(LogoutSuccessful());
    } else if (action is ResetPassword) {
      await authApi.sendForgotPasswordEmail(action.email);

      final ResetPasswordSuccessful successfulAction = ResetPasswordSuccessful();
      store.dispatch(successfulAction);
      action.result(successfulAction);
    } else if (action is SignUp) {
      final AppUser user = await authApi.signUp(action.email, action.password);
      final SignUpSuccessful successfulAction = SignUpSuccessful(user);
      store.dispatch(successfulAction);
      action.result(successfulAction);
    }
  }
}
