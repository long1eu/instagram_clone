// File created by
// Lung Razvan <long1eu>
// on 12/05/2020

library auth_state;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:instagram_clone/src/models/auth/app_user.dart';
import 'package:instagram_clone/src/models/auth/registration_info.dart';
import 'package:instagram_clone/src/models/serializers.dart';

part 'auth_state.g.dart';

abstract class AuthState implements Built<AuthState, AuthStateBuilder> {
  factory AuthState([void Function(AuthStateBuilder b) updates]) = _$AuthState;

  factory AuthState.fromJson(Map<dynamic, dynamic> json) => serializers.deserializeWith(serializer, json);

  AuthState._();

  @nullable
  AppUser get user;

  @nullable
  RegistrationInfo get info;

  // uid => user
  /// The users that have posts and comments in this local instance of the app and the user that this user follows.
  BuiltMap<String, AppUser> get contacts;

  BuiltList<AppUser> get searchResult;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this);

  static Serializer<AuthState> get serializer => _$authStateSerializer;
}
