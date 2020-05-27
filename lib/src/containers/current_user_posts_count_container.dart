// File created by
// Lung Razvan <long1eu>
// on 16/04/2020

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:instagram_clone/src/models/app_state.dart';
import 'package:instagram_clone/src/models/posts/post.dart';
import 'package:redux/redux.dart';

class CurrentUserPostsCountContainer extends StatelessWidget {
  const CurrentUserPostsCountContainer({Key key, @required this.builder}) : super(key: key);

  final ViewModelBuilder<int> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, int>(
      converter: (Store<AppState> store) {
        return store.state.posts.posts.values //
            .where((Post post) => post.uid == store.state.auth.user.uid)
            .length;
      },
      builder: builder,
    );
  }
}
