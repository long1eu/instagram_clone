// File created by
// Lung Razvan <long1eu>
// on 08/05/2020

import 'package:instagram_clone/src/actions/actions.dart';
import 'package:instagram_clone/src/actions/initialize_app.dart';
import 'package:instagram_clone/src/data/auth_api.dart';
import 'package:instagram_clone/src/data/comments_api.dart';
import 'package:instagram_clone/src/data/post_api.dart';
import 'package:instagram_clone/src/epics/auth_epics.dart';
import 'package:instagram_clone/src/epics/comments_epics.dart';
import 'package:instagram_clone/src/epics/post_epics.dart';
import 'package:instagram_clone/src/models/app_state.dart';
import 'package:instagram_clone/src/models/auth/app_user.dart';
import 'package:meta/meta.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

class AppEpics {
  const AppEpics({
    @required AuthApi authApi,
    @required PostApi postApi,
    @required CommentsApi commentsApi,
  })  : assert(authApi != null),
        assert(postApi != null),
        assert(commentsApi != null),
        _authApi = authApi,
        _postApi = postApi,
        _commentsApi = commentsApi;

  final AuthApi _authApi;
  final PostApi _postApi;
  final CommentsApi _commentsApi;

  Epic<AppState> get epics {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, InitializeApp>(_initializeApp),
      AuthEpics(authApi: _authApi).epics,
      PostEpics(postApi: _postApi).epics,
      CommentsEpics(commentsApi: _commentsApi).epics,
    ]);
  }

  Stream<AppAction> _initializeApp(Stream<InitializeApp> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((InitializeApp action) => _authApi
            .getUser()
            .asStream()
            .map<AppAction>((AppUser user) => InitializeAppSuccessful(user))
            .onErrorReturnWith((dynamic error) => InitializeAppError(error)));
  }
}
