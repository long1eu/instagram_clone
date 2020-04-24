// File created by
// Lung Razvan <long1eu>
// on 15/04/2020

import 'app_user.dart';
import 'registration_info.dart';

class AppState {
  const AppState({this.user, this.info});

  final AppUser user;
  final RegistrationInfo info;

  AppState copyWith({
    AppUser user,
    RegistrationInfo info,
  }) {
    return AppState(
      user: user ?? this.user,
      info: info ?? this.info,
    );
  }

  @override
  String toString() => 'AppState{user: $user, info: $info}';
}
