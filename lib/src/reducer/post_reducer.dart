// File created by
// Lung Razvan <long1eu>
// on 06/05/2020

import 'package:instagram_clone/src/actions/posts/create_post.dart';
import 'package:instagram_clone/src/actions/posts/listen_for_posts.dart';
import 'package:instagram_clone/src/actions/posts/set.dart';
import 'package:instagram_clone/src/actions/posts/update_post_info.dart';
import 'package:instagram_clone/src/models/posts/post.dart';
import 'package:instagram_clone/src/models/posts/posts_state.dart';
import 'package:redux/redux.dart';

Reducer<PostsState> postReducer = combineReducers<PostsState>(<Reducer<PostsState>>[
  TypedReducer<PostsState, CreatePostSuccessful>(_createPostSuccessful),
  TypedReducer<PostsState, UpdatePostInfo>(_updatePostInfo),
  TypedReducer<PostsState, OnPostsEvent>(_onPostsEvent),
  TypedReducer<PostsState, SetSelectedPost>(_setSelectedPost),
]);

PostsState _createPostSuccessful(PostsState state, CreatePostSuccessful action) {
  return state.rebuild((PostsStateBuilder b) {
    b
      ..posts[action.post.id] = action.post
      ..savePostInfo = null;
  });
}

PostsState _updatePostInfo(PostsState state, UpdatePostInfo action) {
  return state.rebuild((PostsStateBuilder b) => b.savePostInfo = action.info.toBuilder());
}

PostsState _onPostsEvent(PostsState state, OnPostsEvent action) {
  return state.rebuild((PostsStateBuilder b) {
    // this cloud not clear the posts map
    for (Post post in action.posts) {
      b.posts[post.id] = post;
    }
  });
}

PostsState _setSelectedPost(PostsState state, SetSelectedPost action) {
  return state.rebuild((PostsStateBuilder b) => b.selectedPostId = action.postId);
}
