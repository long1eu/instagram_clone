// File created by
// Lung Razvan <long1eu>
// on 16/04/2020

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:instagram_clone/src/models/app_state.dart';
import 'package:instagram_clone/src/models/comments/comment.dart';
import 'package:redux/redux.dart';

class CommentsContainer extends StatelessWidget {
  const CommentsContainer({Key key, @required this.builder}) : super(key: key);

  final ViewModelBuilder<List<Comment>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<Comment>>(
      converter: (Store<AppState> store) {
        return store.state.comments.comments
            .where((Comment comment) => comment.postId == store.state.posts.selectedPostId)
            .where((Comment comment) => store.state.auth.contacts[comment.uid] != null)
            .toList()
              ..sort();
      },
      builder: builder,
    );
  }
}
