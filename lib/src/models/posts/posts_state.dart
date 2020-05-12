// File created by
// Lung Razvan <long1eu>
// on 12/05/2020

library posts_state;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:instagram_clone/src/models/posts/post.dart';
import 'package:instagram_clone/src/models/posts/save_post_info.dart';
import 'package:instagram_clone/src/models/serializers.dart';

part 'posts_state.g.dart';

abstract class PostsState implements Built<PostsState, PostsStateBuilder> {
  factory PostsState([void Function(PostsStateBuilder b) updates]) = _$PostsState;

  factory PostsState.fromJson(Map<dynamic, dynamic> json) => serializers.deserializeWith(serializer, json);

  PostsState._();

  BuiltList<Post> get posts;

  @nullable
  SavePostInfo get savePostInfo;

  @nullable
  String get selectedPostId;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this);

  static Serializer<PostsState> get serializer => _$postsStateSerializer;
}
