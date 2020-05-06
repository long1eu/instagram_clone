// File created by
// Lung Razvan <long1eu>
// on 06/05/2020

import 'package:instagram_clone/src/actions/actions.dart';
import 'package:instagram_clone/src/actions/auth/logout.dart';
import 'package:instagram_clone/src/actions/auth/reserve_username.dart';
import 'package:instagram_clone/src/actions/auth/send_sms.dart';
import 'package:instagram_clone/src/actions/auth/update_registration_info.dart';
import 'package:instagram_clone/src/models/app_state.dart';
import 'package:redux/redux.dart';

Reducer<AppState> authReducer = combineReducers<AppState>(<Reducer<AppState>>[
  TypedReducer<AppState, UserAction>(_userAction),
  TypedReducer<AppState, LogoutSuccessful>(_logoutSuccessful),
  TypedReducer<AppState, UpdateRegistrationInfo>(_updateRegistrationInfo),
  TypedReducer<AppState, ReserveUsernameSuccessful>(_reserveUsernameSuccessful),
  TypedReducer<AppState, SendSmsSuccessful>(_sendSmsSuccessful),
]);

AppState _userAction(AppState state, UserAction action) {
  return state.rebuild((AppStateBuilder b) => b.user = action.user?.toBuilder());
}

AppState _logoutSuccessful(AppState state, LogoutSuccessful action) {
  return AppState();
}

AppState _updateRegistrationInfo(AppState state, UpdateRegistrationInfo action) {
  return state.rebuild((AppStateBuilder b) => b.info = action.info.toBuilder());
}

AppState _reserveUsernameSuccessful(AppState state, ReserveUsernameSuccessful action) {
  return state.rebuild((AppStateBuilder b) => b.info.username = action.username);
}

AppState _sendSmsSuccessful(AppState state, SendSmsSuccessful action) {
  return state.rebuild((AppStateBuilder b) => b.info.verificationId = action.verificationId);
}
