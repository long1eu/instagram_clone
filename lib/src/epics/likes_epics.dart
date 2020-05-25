// File created by
// Lung Razvan <long1eu>
// on 08/05/2020

import 'package:instagram_clone/src/actions/actions.dart';
import 'package:instagram_clone/src/actions/likes/create_like.dart';
import 'package:instagram_clone/src/actions/likes/delete_like.dart';
import 'package:instagram_clone/src/actions/likes/get_likes.dart';
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
      TypedEpic<AppState, GetLikes>(_getLikes),
      TypedEpic<AppState, DeleteLike>(_deleteLike),
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

  Stream<AppAction> _getLikes(Stream<GetLikes> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((GetLikes action) => _api
            .getLikes(action.parentId)
            .asStream()
            .map<AppAction>((List<Like> likes) => GetLikesSuccessful(likes, action.parentId))
            .onErrorReturnWith((dynamic error) => GetLikesError(error)));
  }

  Stream<AppAction> _deleteLike(Stream<DeleteLike> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((DeleteLike action) => _api
            .delete(action.likeId)
            .asStream()
            .map<AppAction>((_) => DeleteLikeSuccessful(
                  likeId: action.likeId,
                  parentId: action.parentId,
                  type: action.type,
                ))
            .onErrorReturnWith((dynamic error) => DeleteLikeError(error)));
  }
}
