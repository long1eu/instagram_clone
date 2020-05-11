// File created by
// Lung Razvan <long1eu>
// on 13/04/2020

import 'package:flutter/material.dart';
import 'package:instagram_clone/src/containers/user_container.dart';
import 'package:instagram_clone/src/models/app_user.dart';
import 'package:instagram_clone/src/presentation/home/home_page.dart';
import 'package:instagram_clone/src/presentation/login_page.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UserContainer(
      builder: (BuildContext context, AppUser user) {
        return user != null ? const HomePage() : const LoginPage();
      },
    );
  }
}
