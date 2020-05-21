// File created by
// Lung Razvan <long1eu>
// on 08/05/2020

import 'package:instagram_clone/src/actions/actions.dart';
import 'package:instagram_clone/src/actions/auth/get_contact.dart';
import 'package:instagram_clone/src/actions/likes/get_likes.dart';
import 'package:instagram_clone/src/actions/posts/create_post.dart';
import 'package:instagram_clone/src/actions/posts/listen_for_posts.dart';
import 'package:instagram_clone/src/data/post_api.dart';
import 'package:instagram_clone/src/models/app_state.dart';
import 'package:instagram_clone/src/models/posts/post.dart';
import 'package:meta/meta.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

class PostEpics {
  const PostEpics({
    @required PostApi postApi,
  })  : assert(postApi != null),
        _postApi = postApi;

  final PostApi _postApi;

  Epic<AppState> get epics {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, CreatePost>(_createPost),
      _listenForPosts,
    ]);
  }

  Stream<AppAction> _createPost(Stream<CreatePost> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((CreatePost action) => _postApi
            .create(
              uid: store.state.auth.user.uid,
              description: store.state.posts.savePostInfo.description,
              pictures: store.state.posts.savePostInfo.pictures.toList(),
            )
            .asStream()
            .map<AppAction>((Post post) => CreatePostSuccessful(post))
            .onErrorReturnWith((dynamic error) => CreatePostError(error))
            .doOnData(action.result));
  }

  Stream<AppAction> _listenForPosts(Stream<dynamic> actions, EpicStore<AppState> store) {
    return actions //
        .whereType<ListenForPosts>()
        .flatMap((ListenForPosts action) => _postApi
            .listen(store.state.auth.user.uid)
            .expand<AppAction>((List<Post> posts) => <AppAction>[
                  OnPostsEvent(posts),
                  ...posts //
                      .where((Post post) => store.state.auth.contacts[post.uid] == null)
                      .map((Post post) => GetContact(post.uid))
                      .toSet(),
                  ...posts //
                      .where((Post post) => store.state.likes.posts[post.id] == null)
                      .map((Post post) => GetLikes(post.id))
                      .toSet(),
                ])
            .takeUntil(actions.whereType<StopListeningForPosts>())
            .onErrorReturnWith((dynamic error) => ListenForPostsError(error)));
  }
}
