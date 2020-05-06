// File created by
// Lung Razvan <long1eu>
// on 15/04/2020

import 'package:flutter/material.dart';
import 'package:instagram_clone/src/actions/initialize_app.dart';
import 'package:instagram_clone/src/data/auth_api.dart';
import 'package:instagram_clone/src/data/post_api.dart';
import 'package:instagram_clone/src/middleware/auth_middleware.dart';
import 'package:instagram_clone/src/middleware/post_middleware.dart';
import 'package:instagram_clone/src/models/app_state.dart';
import 'package:instagram_clone/src/models/app_user.dart';
import 'package:meta/meta.dart';
import 'package:redux/redux.dart';

class AppMiddleware {
  AppMiddleware({@required this.authApi, @required this.postApi});

  final AuthApi authApi;
  final PostApi postApi;

  List<Middleware<AppState>> get middleware {
    return <Middleware<AppState>>[
      TypedMiddleware<AppState, InitializeApp>(_initializeApp),
      ...AuthMiddleware(authApi: authApi).middleware,
      ...PostMiddleware(postApi: postApi).middleware,
    ];
  }

  Future<void> _initializeApp(Store<AppState> store, InitializeApp action, NextDispatcher next) async {
    next(action);

    try {
      final AppUser user = await authApi.getUser();
      store.dispatch(InitializeAppSuccessful(user));
    } catch (error) {
      store.dispatch(InitializeAppError(error));
    }
  }
}
