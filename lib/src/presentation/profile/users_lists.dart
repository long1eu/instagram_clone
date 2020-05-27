// File created by
// Lung Razvan <long1eu>
// on 27/05/2020

import 'package:flutter/material.dart';
import 'package:instagram_clone/src/containers/following_container.dart';
import 'package:instagram_clone/src/models/auth/app_user.dart';

class UsersList extends StatelessWidget {
  const UsersList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Following'),
      ),
      body: FollowingContainer(
        builder: (BuildContext context, List<AppUser> users) {
          if (users.isEmpty) {
            return const Center(
              child: Text('You\'re a lonely human.'),
            );
          }

          return ListView.builder(
            itemCount: users.length,
            itemBuilder: (BuildContext context, int index) {
              final AppUser user = users[index];

              return ListTile(
                title: Text(user.displayName),
                subtitle: Text('@${user.username}'),
              );
            },
          );
        },
      ),
    );
  }
}
