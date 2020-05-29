// File created by
// Lung Razvan <long1eu>
// on 08/05/2020

import 'package:flutter/material.dart';
import 'package:instagram_clone/src/actions/actions.dart';
import 'package:instagram_clone/src/actions/auth/get_contact.dart';
import 'package:instagram_clone/src/actions/auth/login.dart';
import 'package:instagram_clone/src/actions/auth/logout.dart';
import 'package:instagram_clone/src/actions/auth/reserve_username.dart';
import 'package:instagram_clone/src/actions/auth/reset_password.dart';
import 'package:instagram_clone/src/actions/auth/search_users.dart';
import 'package:instagram_clone/src/actions/auth/send_sms.dart';
import 'package:instagram_clone/src/actions/auth/signup.dart';
import 'package:instagram_clone/src/actions/auth/start_following.dart';
import 'package:instagram_clone/src/actions/auth/stop_following.dart';
import 'package:instagram_clone/src/data/auth_api.dart';
import 'package:instagram_clone/src/models/app_state.dart';
import 'package:instagram_clone/src/models/auth/app_user.dart';
import 'package:meta/meta.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

class AuthEpics {
  const AuthEpics({@required AuthApi authApi})
      : assert(authApi != null),
        _authApi = authApi;
  final AuthApi _authApi;

  Epic<AppState> get epics {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, Login>(_login),
      TypedEpic<AppState, Logout>(_logout),
      TypedEpic<AppState, ResetPassword>(_resetPassword),
      TypedEpic<AppState, SignUp>(_signUp),
      TypedEpic<AppState, ReserveUsername>(_reserveUsername),
      TypedEpic<AppState, SendSms>(_sendSms),
      TypedEpic<AppState, GetContact>(_getContact),
      TypedEpic<AppState, SearchUsers>(_searchUsers),
      TypedEpic<AppState, StartFollowing>(_startFollowing),
      TypedEpic<AppState, StopFollowing>(_stopFollowing),
    ]);
  }

  Stream<AppAction> _login(Stream<Login> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((Login action) => _authApi
            .login(action.email, action.password)
            .asStream()
            .expand<AppAction>((AppUser user) => <AppAction>[
                  LoginSuccessful(user),
                  ...user.following //
                      .where((String uid) => store.state.auth.contacts[uid] == null)
                      .map((String uid) => GetContact(uid))
                      .toSet(),
                ])
            .onErrorReturnWith((dynamic error) => LoginError(error)));
  }

  Stream<AppAction> _logout(Stream<Logout> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((Logout action) => _authApi
            .logOut()
            .asStream()
            .mapTo<AppAction>(LogoutSuccessful())
            .onErrorReturnWith((dynamic error) => LogoutError(error)));
  }

  Stream<AppAction> _resetPassword(Stream<ResetPassword> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((ResetPassword action) => _authApi
            .sendForgotPasswordEmail(action.email)
            .asStream()
            .map<AppAction>((_) => ResetPasswordSuccessful())
            .onErrorReturnWith((dynamic error) => ResetPasswordError(error))
            .doOnData(action.result));
  }

  Stream<AppAction> _signUp(Stream<SignUp> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((SignUp action) => _authApi
            .signUp(store.state.auth.info)
            .asStream()
            .map<AppAction>((AppUser user) => SignUpSuccessful(user))
            .onErrorReturnWith((dynamic error) => SignUpError(error))
            .doOnData(action.result));
  }

  Stream<AppAction> _reserveUsername(Stream<ReserveUsername> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((ReserveUsername action) => _authApi
            .reserveUsername(email: store.state.auth.info.email, displayName: store.state.auth.info.displayName)
            .asStream()
            .map<AppAction>((String username) => ReserveUsernameSuccessful(username))
            .onErrorReturnWith((dynamic error) => ReserveUsernameError(error)));
  }

  Stream<AppAction> _sendSms(Stream<SendSms> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((SendSms action) => _authApi
            .sendSms(store.state.auth.info.phone)
            .asStream()
            .map<AppAction>((String verificationId) => SendSmsSuccessful(verificationId))
            .onErrorReturnWith((dynamic error) => SendSmsError(error))
            .doOnData(action.result));
  }

  Stream<AppAction> _getContact(Stream<GetContact> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((GetContact action) => _authApi
            .getContact(action.uid)
            .asStream()
            .map<AppAction>((AppUser user) => GetContactSuccessful(user))
            .onErrorReturnWith((dynamic error) => GetContactError(error)));
  }

  Stream<AppAction> _searchUsers(Stream<SearchUsers> actions, EpicStore<AppState> store) {
    return actions //
        .debounceTime(const Duration(milliseconds: 500))
        .switchMap((SearchUsers action) => _authApi
            .searchUsers(query: action.query, uid: store.state.auth.user.uid)
            .asStream()
            .map<AppAction>((List<AppUser> users) => SearchUsersSuccessful(users))
            .onErrorReturnWith((dynamic error) => SearchUsersError(error)));
  }

  Stream<AppAction> _startFollowing(Stream<StartFollowing> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((StartFollowing action) => _authApi
            .startFollowing(uid: store.state.auth.user.uid, followingUid: action.followingUid)
            .asStream()
            .map<AppAction>((_) => StartFollowingSuccessful(action.followingUid))
            .onErrorReturnWith((dynamic error) => StartFollowingError(error)));
  }

  Stream<AppAction> _stopFollowing(Stream<StopFollowing> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((StopFollowing action) => _authApi
            .stopFollowing(uid: store.state.auth.user.uid, followingUid: action.followingUid)
            .asStream()
            .map<AppAction>((_) => StopFollowingSuccessful(action.followingUid))
            .onErrorReturnWith((dynamic error) => StopFollowingError(error)));
  }
}
