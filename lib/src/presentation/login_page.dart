// File created by
// Lung Razvan <long1eu>
// on 10/04/2020

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:instagram_clone/src/actions/login.dart';
import 'package:instagram_clone/src/models/app_state.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(16.0),
          children: <Widget>[
            const SizedBox(height: 32.0),
            Container(
              alignment: AlignmentDirectional.center,
              child: Image.asset(
                'res/logo.png',
                height: 56.0,
              ),
            ),
            const SizedBox(height: 32.0),
            TextField(
              controller: email,
              decoration: const InputDecoration(
                hintText: 'Email address',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 8.0),
            TextField(
              controller: password,
              obscureText: true,
              decoration: const InputDecoration(
                hintText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16.0),
            Container(
              alignment: AlignmentDirectional.centerEnd,
              child: FlatButton(
                padding: EdgeInsets.zero,
                textColor: Theme.of(context).accentColor,
                child: const Text('Forgotten password?'),
                onPressed: () {
                  Navigator.pushNamed(context, '/forgotPassword');
                },
              ),
            ),
            const SizedBox(height: 24.0),
            RaisedButton(
              elevation: 0.0,
              color: Theme.of(context).accentColor,
              colorBrightness: Brightness.light,
              child: const Text('Log in'),
              onPressed: () async {
                final String email = this.email.text;
                final String password = this.password.text;

                if (email.isNotEmpty && password.isNotEmpty) {
                  StoreProvider.of<AppState>(context).dispatch(Login(email, password));
                }
              },
            ),
            const SizedBox(height: 24.0),
            Container(
              alignment: AlignmentDirectional.center,
              child: Text.rich(
                TextSpan(
                  text: 'Don\'t have an account? ',
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Sign Up',
                      style: TextStyle(
                        color: Theme.of(context).accentColor,
                        fontWeight: FontWeight.bold,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.pushNamed(context, '/signUp');
                        },
                    ),
                  ],
                ),
              ),
            ),
            const Divider(),
            const SizedBox(height: 16.0),
            Container(
              alignment: AlignmentDirectional.center,
              child: const Text('Instagram from Razvan'),
            ),
          ],
        ),
      ),
    );
  }
}
