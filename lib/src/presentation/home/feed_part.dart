// File created by
// Lung Razvan <long1eu>
// on 11/05/2020

import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:instagram_clone/src/actions/likes/create_like.dart';
import 'package:instagram_clone/src/actions/posts/listen_for_posts.dart';
import 'package:instagram_clone/src/actions/posts/set.dart';
import 'package:instagram_clone/src/containers/contacts_container.dart';
import 'package:instagram_clone/src/containers/posts_container.dart';
import 'package:instagram_clone/src/containers/posts_likes_container.dart';
import 'package:instagram_clone/src/containers/user_container.dart';
import 'package:instagram_clone/src/models/app_state.dart';
import 'package:instagram_clone/src/models/auth/app_user.dart';
import 'package:instagram_clone/src/models/likes/like.dart';
import 'package:instagram_clone/src/models/likes/like_type.dart';
import 'package:instagram_clone/src/models/posts/post.dart';
import 'package:intl/intl.dart';
import 'package:redux/redux.dart';

class FeedPart extends StatefulWidget {
  const FeedPart({Key key}) : super(key: key);

  @override
  _FeedPartState createState() => _FeedPartState();
}

class _FeedPartState extends State<FeedPart> {
  Store<AppState> store;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      store = StoreProvider.of<AppState>(context);
      store.dispatch(ListenForPosts());
    });
  }

  @override
  void dispose() {
    store.dispatch(StopListeningForPosts());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return UserContainer(
      builder: (BuildContext context, AppUser currentUser) {
        return ContactsContainer(
          builder: (BuildContext context, Map<String, AppUser> contacts) {
            return PostsContainer(
              builder: (BuildContext context, List<Post> posts) {
                final DateFormat dayFormat = DateFormat.yMMMMd().add_Hm();
                final DateFormat hourFormat = DateFormat.Hm();

                return PostsLikesContainer(
                  builder: (BuildContext context, BuiltMap<String, BuiltList<Like>> likes) {
                    return ListView.builder(
                      itemCount: posts.length,
                      itemBuilder: (BuildContext context, int index) {
                        final Post post = posts[index];
                        final BuiltList<Like> postLikes = likes[post.id] ?? BuiltList<Like>();
                        final bool containsLike = postLikes.any((Like like) => like.uid == currentUser.uid);
                        final AppUser user = contacts[post.uid];

                        String date;
                        if (DateTime.now().difference(post.createdAt) > const Duration(days: 1)) {
                          date = dayFormat.format(post.createdAt);
                        } else {
                          date = hourFormat.format(post.createdAt);
                        }

                        return Container(
                          height: MediaQuery.of(context).size.height / 2,
                          child: Column(
                            children: <Widget>[
                              ListTile(
                                title: Text(user.displayName),
                                subtitle: Text('@${user.username}'),
                              ),
                              Expanded(
                                child: Image.network(
                                  post.pictures.first,
                                  fit: BoxFit.cover,
                                  width: MediaQuery.of(context).size.width,
                                ),
                              ),
                              Row(
                                children: <Widget>[
                                  IconButton(
                                    icon: Icon(
                                      containsLike ? Icons.favorite : Icons.favorite_border,
                                    ),
                                    onPressed: () {
                                      if (containsLike) {
                                        //
                                      } else {
                                        StoreProvider.of<AppState>(context)
                                            .dispatch(CreateLike(post.id, LikeType.post));
                                      }
                                    },
                                  ),
                                  IconButton(
                                    icon: const Icon(Icons.chat_bubble_outline),
                                    onPressed: () {
                                      StoreProvider.of<AppState>(context).dispatch(SetSelectedPost(post.id));
                                      Navigator.pushNamed(context, '/commentsPage');
                                    },
                                  ),
                                  IconButton(
                                    icon: const Icon(Icons.send),
                                    onPressed: () {},
                                  ),
                                  const Spacer(),
                                  IconButton(
                                    icon: const Icon(Icons.bookmark_border),
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                              ListTile(
                                title: Text(post.description),
                                subtitle: Text(date),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                );
              },
            );
          },
        );
      },
    );
  }
}
