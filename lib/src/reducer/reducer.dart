// File created by
// Lung Razvan <long1eu>
// on 15/04/2020

import 'package:instagram_clone/src/actions/actions.dart';
import 'package:instagram_clone/src/actions/logout.dart';
import 'package:instagram_clone/src/actions/reserve_username.dart';
import 'package:instagram_clone/src/actions/send_sms.dart';
import 'package:instagram_clone/src/actions/update_registration_info.dart';
import 'package:instagram_clone/src/models/app_state.dart';
import 'package:redux/redux.dart';

AppState reducer(AppState state, dynamic action) {
  final AppState result = _reducer(state, action);
  if (action is ErrorAction) {
    final dynamic error = action.error;
    try {
      print('error: $error');
      print('stackTrace: ${error.stackTrace}');
    } catch (_) {}
  }
  print('$action => $result');
  return result;
}

Reducer<AppState> _reducer = combineReducers<AppState>(<Reducer<AppState>>[
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
