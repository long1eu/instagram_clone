// File created by
// Lung Razvan <long1eu>
// on 10/04/2020

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:instagram_clone/src/actions/logout.dart';
import 'package:instagram_clone/src/models/app_state.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.clear),
            onPressed: () async {
              StoreProvider.of<AppState>(context).dispatch(Logout());
            },
          ),
        ],
      ),
    );
  }
}
