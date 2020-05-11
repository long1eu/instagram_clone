// File created by
// Lung Razvan <long1eu>
// on 10/04/2020

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:instagram_clone/src/actions/auth/logout.dart';
import 'package:instagram_clone/src/models/app_state.dart';
import 'package:instagram_clone/src/presentation/home/home_part.dart';

import 'add_post_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  TabController tabController;

  int page = 0;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

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
      body: TabBarView(
        controller: tabController,
        children: <Widget>[
          const HomePart(),
          Container(color: Colors.orange),
          Container(color: Colors.blue),
          Container(color: Colors.green),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute<void>(
                fullscreenDialog: true,
                builder: (BuildContext context) {
                  return const AddPostPage();
                },
              ),
            );
          } else {
            setState(() => page = index);
            if (index > 2) {
              index--;
            }

            tabController.animateTo(index);
          }
        },
        currentIndex: page,
        selectedItemColor: Theme.of(context).accentColor,
        unselectedItemColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text('Search'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box),
            title: Text('Add post'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            title: Text('Favorite'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            title: Text('Profile'),
          ),
        ],
      ),
    );
  }
}
