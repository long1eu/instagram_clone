// File created by
// Lung Razvan <long1eu>
// on 30/04/2020

library serializers;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:instagram_clone/src/models/app_state.dart';
import 'package:instagram_clone/src/models/auth/app_user.dart';
import 'package:instagram_clone/src/models/auth/auth_state.dart';
import 'package:instagram_clone/src/models/auth/registration_info.dart';
import 'package:instagram_clone/src/models/comments/comment.dart';
import 'package:instagram_clone/src/models/comments/comments_state.dart';
import 'package:instagram_clone/src/models/likes/like.dart';
import 'package:instagram_clone/src/models/likes/like_type.dart';
import 'package:instagram_clone/src/models/likes/likes_state.dart';
import 'package:instagram_clone/src/models/posts/post.dart';
import 'package:instagram_clone/src/models/posts/posts_state.dart';
import 'package:instagram_clone/src/models/posts/save_post_info.dart';

part 'serializers.g.dart';

@SerializersFor(<Type>[
  AppState,
  AppUser,
  RegistrationInfo,
  Post,
  SavePostInfo,
  Comment,
  AuthState,
  PostsState,
  CommentsState,
  LikesState,
  Like,
  LikeType,
])
Serializers serializers = (_$serializers.toBuilder() //
      ..addPlugin(StandardJsonPlugin()))
    .build();
