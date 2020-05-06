// File created by
// Lung Razvan <long1eu>
// on 06/05/2020

import 'package:instagram_clone/src/actions/posts/create_post.dart';
import 'package:instagram_clone/src/models/app_state.dart';
import 'package:redux/redux.dart';

Reducer<AppState> postReducer = combineReducers<AppState>(<Reducer<AppState>>[
  TypedReducer<AppState, CreatePostSuccessful>(_createPostSuccessful),
]);

AppState _createPostSuccessful(AppState state, CreatePostSuccessful action) {
  return state.rebuild((AppStateBuilder b) => b.posts.add(action.post));
}
