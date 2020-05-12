// File created by
// Lung Razvan <long1eu>
// on 08/05/2020

import 'package:instagram_clone/src/actions/actions.dart';
import 'package:instagram_clone/src/actions/comments/create_comment.dart';
import 'package:instagram_clone/src/data/comments_api.dart';
import 'package:instagram_clone/src/models/app_state.dart';
import 'package:instagram_clone/src/models/comments/comment.dart';
import 'package:meta/meta.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

class CommentsEpics {
  const CommentsEpics({
    @required CommentsApi commentsApi,
  })  : assert(commentsApi != null),
        _api = commentsApi;

  final CommentsApi _api;

  Epic<AppState> get epics {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, CreateComment>(_createComment),
    ]);
  }

  Stream<AppAction> _createComment(Stream<CreateComment> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((CreateComment action) => _api
            .create(
              uid: store.state.auth.user.uid,
              postId: store.state.posts.selectedPostId,
              text: action.text,
            )
            .asStream()
            .map<AppAction>((Comment comment) => CreateCommentSuccessful(comment))
            .onErrorReturnWith((dynamic error) => CreateCommentError(error)));
  }
}
