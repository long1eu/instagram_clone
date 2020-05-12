// File created by
// Lung Razvan <long1eu>
// on 06/05/2020

import 'package:instagram_clone/src/actions/comments/create_comment.dart';
import 'package:instagram_clone/src/models/comments/comments_state.dart';
import 'package:redux/redux.dart';

Reducer<CommentsState> commentsReducer = combineReducers<CommentsState>(<Reducer<CommentsState>>[
  TypedReducer<CommentsState, CreateCommentSuccessful>(_createCommentSuccessful),
]);

CommentsState _createCommentSuccessful(CommentsState state, CreateCommentSuccessful action) {
  return state.rebuild((CommentsStateBuilder b) {
    b.comments.add(action.comment);
  });
}
