// File created by
// Lung Razvan <long1eu>
// on 11/05/2020

// 1. start action
// 1.a stop listening
// 2. on event
// 3. listen error

library listen_for_posts;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:instagram_clone/src/actions/actions.dart';
import 'package:instagram_clone/src/models/post.dart';

part 'listen_for_posts.g.dart';

abstract class ListenForPosts //
    implements
        Built<ListenForPosts, ListenForPostsBuilder>,
        AppAction //
{
  factory ListenForPosts([void Function(ListenForPostsBuilder b) updates]) = _$ListenForPosts;

  ListenForPosts._();
}

abstract class StopListeningForPosts //
    implements
        Built<StopListeningForPosts, StopListeningForPostsBuilder>,
        AppAction //
{
  factory StopListeningForPosts([void Function(StopListeningForPostsBuilder b) updates]) = _$StopListeningForPosts;

  StopListeningForPosts._();
}

abstract class OnPostsEvent //
    implements
        Built<OnPostsEvent, OnPostsEventBuilder>,
        AppAction //
{
  factory OnPostsEvent(List<Post> posts) {
    return _$OnPostsEvent((OnPostsEventBuilder b) => b.posts = ListBuilder<Post>(posts));
  }

  OnPostsEvent._();

  BuiltList<Post> get posts;
}

abstract class ListenForPostsError //
    implements
        Built<ListenForPostsError, ListenForPostsErrorBuilder>,
        AppAction,
        ErrorAction //
{
  factory ListenForPostsError(Object error) {
    return _$ListenForPostsError((ListenForPostsErrorBuilder b) => b.error = error);
  }

  ListenForPostsError._();

  @override
  Object get error;
}
