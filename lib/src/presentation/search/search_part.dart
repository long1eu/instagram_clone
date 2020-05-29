// File created by
// Lung Razvan <long1eu>
// on 29/05/2020

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:instagram_clone/src/actions/auth/search_users.dart';
import 'package:instagram_clone/src/containers/users_search_result_container.dart';
import 'package:instagram_clone/src/models/app_state.dart';
import 'package:instagram_clone/src/models/auth/app_user.dart';

class SearchPart extends StatefulWidget {
  const SearchPart({Key key}) : super(key: key);

  @override
  _SearchPartState createState() => _SearchPartState();
}

class _SearchPartState extends State<SearchPart> {
  final TextEditingController _query = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Material(
            color: Theme.of(context).bottomAppBarColor,
            elevation: 6.0,
            child: Container(
              padding: EdgeInsetsDirectional.only(top: MediaQuery.of(context).padding.top),
              margin: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),
              child: TextField(
                controller: _query,
                maxLines: 1,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'username, email or name',
                  suffixIcon: Icon(Icons.search),
                ),
                onChanged: (String value) {
                  StoreProvider.of<AppState>(context).dispatch(SearchUsers(value));
                },
              ),
            ),
          ),
          Flexible(
            child: UsersSearchResultContainer(
              builder: (BuildContext context, List<AppUser> users) {
                if (users.isEmpty) {
                  return const Center(
                    child: Text('Enter a value to search.'),
                  );
                }

                return ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: users.length,
                  itemBuilder: (BuildContext context, int index) {
                    final AppUser user = users[index];

                    return ListTile(
                      title: Text(user.displayName),
                      subtitle: Text('@${user.username}\n${user.email}'),
                      isThreeLine: true,
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
