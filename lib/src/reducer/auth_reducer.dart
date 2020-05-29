// File created by
// Lung Razvan <long1eu>
// on 06/05/2020

import 'package:instagram_clone/src/actions/actions.dart';
import 'package:instagram_clone/src/actions/auth/get_contact.dart';
import 'package:instagram_clone/src/actions/auth/logout.dart';
import 'package:instagram_clone/src/actions/auth/reserve_username.dart';
import 'package:instagram_clone/src/actions/auth/search_users.dart';
import 'package:instagram_clone/src/actions/auth/send_sms.dart';
import 'package:instagram_clone/src/actions/auth/start_following.dart';
import 'package:instagram_clone/src/actions/auth/stop_following.dart';
import 'package:instagram_clone/src/actions/auth/update_registration_info.dart';
import 'package:instagram_clone/src/models/auth/app_user.dart';
import 'package:instagram_clone/src/models/auth/auth_state.dart';
import 'package:redux/redux.dart';

Reducer<AuthState> authReducer = combineReducers<AuthState>(<Reducer<AuthState>>[
  TypedReducer<AuthState, UserAction>(_userAction),
  TypedReducer<AuthState, StartFollowingSuccessful>(_startFollowingSuccessful),
  TypedReducer<AuthState, StopFollowingSuccessful>(_stopFollowingSuccessful),
  TypedReducer<AuthState, LogoutSuccessful>(_logoutSuccessful),
  TypedReducer<AuthState, UpdateRegistrationInfo>(_updateRegistrationInfo),
  TypedReducer<AuthState, ReserveUsernameSuccessful>(_reserveUsernameSuccessful),
  TypedReducer<AuthState, SendSmsSuccessful>(_sendSmsSuccessful),
  TypedReducer<AuthState, GetContactSuccessful>(_getContactSuccessful),
  TypedReducer<AuthState, SearchUsersSuccessful>(_searchUsersSuccessful),
]);

AuthState _userAction(AuthState state, UserAction action) {
  return state.rebuild((AuthStateBuilder b) => b.user = action.user?.toBuilder());
}

AuthState _startFollowingSuccessful(AuthState state, StartFollowingSuccessful action) {
  return state.rebuild((AuthStateBuilder b) {
    b.user = state.user.rebuild((AppUserBuilder b) => b.following.add(action.followingUid)).toBuilder();
  });
}

AuthState _stopFollowingSuccessful(AuthState state, StopFollowingSuccessful action) {
  return state.rebuild((AuthStateBuilder b) {
    b.user = state.user.rebuild((AppUserBuilder b) => b.following.remove(action.followingUid)).toBuilder();
  });
}

AuthState _logoutSuccessful(AuthState state, LogoutSuccessful action) {
  return AuthState();
}

AuthState _updateRegistrationInfo(AuthState state, UpdateRegistrationInfo action) {
  return state.rebuild((AuthStateBuilder b) => b.info = action.info.toBuilder());
}

AuthState _reserveUsernameSuccessful(AuthState state, ReserveUsernameSuccessful action) {
  return state.rebuild((AuthStateBuilder b) => b.info.username = action.username);
}

AuthState _sendSmsSuccessful(AuthState state, SendSmsSuccessful action) {
  return state.rebuild((AuthStateBuilder b) => b.info.verificationId = action.verificationId);
}

AuthState _getContactSuccessful(AuthState state, GetContactSuccessful action) {
  return state.rebuild((AuthStateBuilder b) {
    b.contacts[action.user.uid] = action.user;
  });
}

AuthState _searchUsersSuccessful(AuthState state, SearchUsersSuccessful action) {
  return state.rebuild((AuthStateBuilder b) {
    b.searchResult = action.users.toBuilder();
  });
}
