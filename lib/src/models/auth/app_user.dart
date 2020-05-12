// File created by
// Lung Razvan <long1eu>
// on 15/04/2020

library app_user;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:instagram_clone/src/models/serializers.dart';

part 'app_user.g.dart';

abstract class AppUser implements Built<AppUser, AppUserBuilder> {
  factory AppUser([void Function(AppUserBuilder b) updates]) = _$AppUser;

  factory AppUser.fromJson(Map<dynamic, dynamic> json) => serializers.deserializeWith(serializer, json);

  AppUser._();

  String get uid;

  @nullable
  String get displayName;

  @nullable
  String get username;

  @nullable
  String get email;

  @nullable
  String get phone;

  @nullable
  DateTime get birthDate;

  @nullable
  String get photoUrl;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this);

  static Serializer<AppUser> get serializer => _$appUserSerializer;
}
