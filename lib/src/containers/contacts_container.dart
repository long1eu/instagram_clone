// File created by
// Lung Razvan <long1eu>
// on 16/04/2020

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:instagram_clone/src/models/app_state.dart';
import 'package:instagram_clone/src/models/auth/app_user.dart';
import 'package:instagram_clone/src/models/comments/comment.dart';
import 'package:redux/redux.dart';

class ContactsContainer extends StatelessWidget {
  const ContactsContainer({Key key, @required this.builder}) : super(key: key);

  final ViewModelBuilder<Map<String, AppUser>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, Map<String, AppUser>>(
      converter: (Store<AppState> store) {
        return store.state.auth.contacts.asMap();
      },
      builder: builder,
    );
  }
}
