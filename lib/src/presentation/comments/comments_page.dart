// File created by
// Lung Razvan <long1eu>
// on 13/05/2020

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:instagram_clone/src/actions/comments/create_comment.dart';
import 'package:instagram_clone/src/actions/comments/listen_for_comments.dart';
import 'package:instagram_clone/src/containers/comments_container.dart';
import 'package:instagram_clone/src/containers/contacts_container.dart';
import 'package:instagram_clone/src/containers/selected_post_container.dart';
import 'package:instagram_clone/src/models/app_state.dart';
import 'package:instagram_clone/src/models/auth/app_user.dart';
import 'package:instagram_clone/src/models/comments/comment.dart';
import 'package:instagram_clone/src/models/posts/post.dart';
import 'package:redux/redux.dart';

class CommentsPage extends StatefulWidget {
  const CommentsPage({Key key}) : super(key: key);

  @override
  _CommentsPageState createState() => _CommentsPageState();
}

class _CommentsPageState extends State<CommentsPage> {
  final TextEditingController controller = TextEditingController();
  Store<AppState> store;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      store = StoreProvider.of<AppState>(context);
      store.dispatch(ListenForComments());
    });
  }

  void _result(dynamic action) {
    if (action is CreateCommentSuccessful) {
      controller.clear();
    } else {
      // todo: show error
    }
  }

  @override
  void dispose() {
    store.dispatch(StopListenForComments());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ContactsContainer(
      builder: (BuildContext context, Map<String, AppUser> contacts) {
        return SelectedPostContainer(
          builder: (BuildContext context, Post post) {
            return Scaffold(
              appBar: AppBar(
                title: Text(contacts[post.uid].displayName),
              ),
              body: Column(
                children: <Widget>[
                  Flexible(
                    child: CommentsContainer(
                      builder: (BuildContext context, List<Comment> comments) {
                        return ListView.builder(
                          itemCount: comments.length,
                          itemBuilder: (BuildContext context, int index) {
                            final Comment comment = comments[index];
                            final AppUser user = contacts[comment.uid];

                            return ListTile(
                              title: Text(user.displayName),
                              subtitle: Text(comment.text),
                            );
                          },
                        );
                      },
                    ),
                  ),
                  const Divider(),
                  Form(
                    child: SafeArea(
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 16.0),
                        padding: const EdgeInsetsDirectional.only(bottom: 16.0),
                        child: Row(
                          children: <Widget>[
                            Flexible(
                              child: TextFormField(
                                controller: controller,
                                validator: (String value) {
                                  if (value.isEmpty) {
                                    return 'Try a longer comment.';
                                  }

                                  return null;
                                },
                              ),
                            ),
                            Builder(
                              builder: (BuildContext context) {
                                return IconButton(
                                  icon: const Icon(Icons.send),
                                  onPressed: () {
                                    if (Form.of(context).validate()) {
                                      StoreProvider.of<AppState>(context)
                                          .dispatch(CreateComment(controller.text, _result));
                                    }
                                  },
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
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
