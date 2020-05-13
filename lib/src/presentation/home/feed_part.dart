// File created by
// Lung Razvan <long1eu>
// on 11/05/2020

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:instagram_clone/src/actions/posts/listen_for_posts.dart';
import 'package:instagram_clone/src/actions/posts/set.dart';
import 'package:instagram_clone/src/containers/posts_container.dart';
import 'package:instagram_clone/src/models/app_state.dart';
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
    return PostsContainer(
      builder: (BuildContext context, List<Post> posts) {
        final DateFormat dayFormat = DateFormat.yMMMMd().add_Hm();
        final DateFormat hourFormat = DateFormat.Hm();

        return ListView.builder(
          itemCount: posts.length,
          itemBuilder: (BuildContext context, int index) {
            final Post post = posts[index];

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
                        icon: const Icon(Icons.favorite_border),
                        onPressed: () {},
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
  }
}
