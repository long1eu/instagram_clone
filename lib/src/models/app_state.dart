// File created by
// Lung Razvan <long1eu>
// on 15/04/2020

library app_state;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:instagram_clone/src/models/auth/auth_state.dart';
import 'package:instagram_clone/src/models/chats/chats_state.dart';
import 'package:instagram_clone/src/models/comments/comments_state.dart';
import 'package:instagram_clone/src/models/likes/likes_state.dart';
import 'package:instagram_clone/src/models/posts/posts_state.dart';
import 'package:instagram_clone/src/models/serializers.dart';

part 'app_state.g.dart';

abstract class AppState implements Built<AppState, AppStateBuilder> {
  factory AppState() = _$AppState;

  factory AppState.fromJson(Map<dynamic, dynamic> json) => serializers.deserializeWith(serializer, json);

  AppState._();

  AuthState get auth;

  PostsState get posts;

  CommentsState get comments;

  LikesState get likes;

  ChatsState get chats;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this);

  static Serializer<AppState> get serializer => _$appStateSerializer;
}
