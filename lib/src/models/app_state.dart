// File created by
// Lung Razvan <long1eu>
// on 15/04/2020

library app_state;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:instagram_clone/src/models/post.dart';
import 'package:instagram_clone/src/models/save_post_info.dart';
import 'package:instagram_clone/src/models/serializers.dart';

import 'app_user.dart';
import 'registration_info.dart';

part 'app_state.g.dart';

abstract class AppState implements Built<AppState, AppStateBuilder> {
  factory AppState() = _$AppState;

  factory AppState.fromJson(Map<dynamic, dynamic> json) => serializers.deserializeWith(serializer, json);

  AppState._();

  @nullable
  AppUser get user;

  @nullable
  RegistrationInfo get info;

  BuiltList<Post> get posts;

  @nullable
  SavePostInfo get savePostInfo;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this);

  static Serializer<AppState> get serializer => _$appStateSerializer;
}
