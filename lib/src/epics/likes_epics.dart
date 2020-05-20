// File created by
// Lung Razvan <long1eu>
// on 08/05/2020

import 'package:instagram_clone/src/actions/actions.dart';
import 'package:instagram_clone/src/actions/likes/create_like.dart';
import 'package:instagram_clone/src/data/likes_api.dart';
import 'package:instagram_clone/src/models/app_state.dart';
import 'package:instagram_clone/src/models/likes/like.dart';
import 'package:meta/meta.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

class LikesEpics {
  const LikesEpics({
    @required LikesApi likesApi,
  })  : assert(likesApi != null),
        _api = likesApi;

  final LikesApi _api;

  Epic<AppState> get epics {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, CreateLike>(_createLike),
    ]);
  }

  Stream<AppAction> _createLike(Stream<CreateLike> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((CreateLike action) => _api
            .create(
              uid: store.state.auth.user.uid,
              parentId: action.parentId,
              type: action.type,
            )
            .asStream()
            .map<AppAction>((Like like) => CreateLikeSuccessful(like))
            .onErrorReturnWith((dynamic error) => CreateLikeError(error)));
  }
}
