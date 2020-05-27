// File created by
// Lung Razvan <long1eu>
// on 16/04/2020

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:instagram_clone/src/models/app_state.dart';
import 'package:instagram_clone/src/models/auth/app_user.dart';
import 'package:redux/redux.dart';

class FollowingContainer extends StatelessWidget {
  const FollowingContainer({Key key, @required this.builder}) : super(key: key);

  final ViewModelBuilder<List<AppUser>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<AppUser>>(
      converter: (Store<AppState> store) {
        return store.state.auth.user.following //
            .map((String uid) => store.state.auth.contacts[uid])
            .where((AppUser user) => user != null)
            .toList();
      },
      builder: builder,
    );
  }
}
