// File created by
// Lung Razvan <long1eu>
// on 06/05/2020

import 'package:instagram_clone/src/actions/posts/create_post.dart';
import 'package:instagram_clone/src/actions/posts/listen_for_posts.dart';
import 'package:instagram_clone/src/actions/posts/update_post_info.dart';
import 'package:instagram_clone/src/models/app_state.dart';
import 'package:redux/redux.dart';

Reducer<AppState> postReducer = combineReducers<AppState>(<Reducer<AppState>>[
  TypedReducer<AppState, CreatePostSuccessful>(_createPostSuccessful),
  TypedReducer<AppState, UpdatePostInfo>(_updatePostInfo),
  TypedReducer<AppState, OnPostsEvent>(_onPostsEvent),
]);

AppState _createPostSuccessful(AppState state, CreatePostSuccessful action) {
  return state.rebuild((AppStateBuilder b) {
    b
      ..posts.add(action.post)
      ..savePostInfo = null;
  });
}

AppState _updatePostInfo(AppState state, UpdatePostInfo action) {
  return state.rebuild((AppStateBuilder b) => b.savePostInfo = action.info.toBuilder());
}

AppState _onPostsEvent(AppState state, OnPostsEvent action) {
  return state.rebuild((AppStateBuilder b) {
    b.posts.clear();
    b.posts = action.posts.toBuilder();
  });
}
