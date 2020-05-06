// File created by
// Lung Razvan <long1eu>
// on 15/04/2020

import 'package:flutter/material.dart';
import 'package:instagram_clone/src/actions/auth/login.dart';
import 'package:instagram_clone/src/actions/auth/logout.dart';
import 'package:instagram_clone/src/actions/auth/reserve_username.dart';
import 'package:instagram_clone/src/actions/auth/reset_password.dart';
import 'package:instagram_clone/src/actions/auth/send_sms.dart';
import 'package:instagram_clone/src/actions/auth/signup.dart';
import 'package:instagram_clone/src/data/auth_api.dart';
import 'package:instagram_clone/src/models/app_state.dart';
import 'package:instagram_clone/src/models/app_user.dart';
import 'package:meta/meta.dart';
import 'package:redux/redux.dart';

class AuthMiddleware {
  AuthMiddleware({@required this.authApi});

  final AuthApi authApi;

  List<Middleware<AppState>> get middleware {
    return <Middleware<AppState>>[
      TypedMiddleware<AppState, Login>(_login),
      TypedMiddleware<AppState, Logout>(_logout),
      TypedMiddleware<AppState, ResetPassword>(_resetPassword),
      TypedMiddleware<AppState, SignUp>(_signUp),
      TypedMiddleware<AppState, ReserveUsername>(_reserveUsername),
      TypedMiddleware<AppState, SendSms>(_sendSms),
    ];
  }

  Future<void> _login(Store<AppState> store, Login action, NextDispatcher next) async {
    next(action);

    try {
      final AppUser user = await authApi.login(action.email, action.password);
      store.dispatch(LoginSuccessful(user));
    } catch (error) {
      store.dispatch(LoginError(error));
    }
  }

  Future<void> _logout(Store<AppState> store, Logout action, NextDispatcher next) async {
    next(action);

    try {
      await authApi.logOut();
      store.dispatch(LogoutSuccessful());
    } catch (error) {
      store.dispatch(LogoutError(error));
    }
  }

  Future<void> _resetPassword(Store<AppState> store, ResetPassword action, NextDispatcher next) async {
    next(action);

    try {
      await authApi.sendForgotPasswordEmail(action.email);

      final ResetPasswordSuccessful successfulAction = ResetPasswordSuccessful();
      store.dispatch(successfulAction);
      action.result(successfulAction);
    } catch (error) {
      final ResetPasswordError errorAction = ResetPasswordError(error);
      store.dispatch(errorAction);
      action.result(errorAction);
    }
  }

  Future<void> _signUp(Store<AppState> store, SignUp action, NextDispatcher next) async {
    next(action);

    try {
      final AppUser user = await authApi.signUp(store.state.info);
      final SignUpSuccessful successfulAction = SignUpSuccessful(user);
      store.dispatch(successfulAction);
      action.result(successfulAction);
    } catch (error) {
      final SignUpError errorAction = SignUpError(error);
      store.dispatch(errorAction);
      action.result(errorAction);
    }
  }

  Future<void> _reserveUsername(Store<AppState> store, ReserveUsername action, NextDispatcher next) async {
    next(action);

    try {
      final String username =
          await authApi.reserveUsername(email: store.state.info.email, displayName: store.state.info.displayName);
      store.dispatch(ReserveUsernameSuccessful(username));
    } catch (error) {
      store.dispatch(ReserveUsernameError(error));
    }
  }

  Future<void> _sendSms(Store<AppState> store, SendSms action, NextDispatcher next) async {
    next(action);

    try {
      final String verificationId = await authApi.sendSms(store.state.info.phone);
      final SendSmsSuccessful successful = SendSmsSuccessful(verificationId);
      store.dispatch(successful);
      action.result(successful);
    } catch (e) {
      final SendSmsError error = SendSmsError(e);
      store.dispatch(error);
      action.result(error);
    }
  }
}
