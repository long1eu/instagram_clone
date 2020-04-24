// File created by
// Lung Razvan <long1eu>
// on 15/04/2020

import 'package:instagram_clone/src/actions/initialize_app.dart';
import 'package:instagram_clone/src/actions/login.dart';
import 'package:instagram_clone/src/actions/logout.dart';
import 'package:instagram_clone/src/actions/signup.dart';
import 'package:instagram_clone/src/actions/update_registration_info.dart';
import 'package:instagram_clone/src/models/app_state.dart';
import 'package:redux/redux.dart';

AppState reducer(AppState state, dynamic action) {
  final AppState result = _reducer(state, action);
  print('${action.runtimeType} => $state');
  return result;
}

Reducer<AppState> _reducer = combineReducers<AppState>(<Reducer<AppState>>[
  TypedReducer<AppState, InitializeAppSuccessful>(_initializeAppSuccessful),
  TypedReducer<AppState, LoginSuccessful>(_loginSuccessful),
  TypedReducer<AppState, LogoutSuccessful>(_logoutSuccessful),
  TypedReducer<AppState, SignUpSuccessful>(_signUpSuccessful),
  TypedReducer<AppState, UpdateRegistrationInfo>(_updateRegistrationInfo),
]);

AppState _initializeAppSuccessful(AppState state, InitializeAppSuccessful action) {
  return state.copyWith(user: action.user);
}

AppState _loginSuccessful(AppState state, LoginSuccessful action) {
  return state.copyWith(user: action.user);
}

AppState _logoutSuccessful(AppState state, LogoutSuccessful action) {
  return const AppState();
}

AppState _signUpSuccessful(AppState state, SignUpSuccessful action) {
  return state.copyWith(user: action.user);
}

AppState _updateRegistrationInfo(AppState state, UpdateRegistrationInfo action) {
  return state.copyWith(info: action.info);
}
