// File created by
// Lung Razvan <long1eu>
// on 24/04/2020

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:instagram_clone/src/actions/auth/signup.dart';
import 'package:instagram_clone/src/containers/registration_info_container.dart';
import 'package:instagram_clone/src/models/app_state.dart';
import 'package:instagram_clone/src/models/registration_info.dart';

class UsernamePart extends StatefulWidget {
  const UsernamePart({Key key, @required this.onNext}) : super(key: key);

  final VoidCallback onNext;

  @override
  _UsernamePartState createState() => _UsernamePartState();
}

class _UsernamePartState extends State<UsernamePart> {
  final TextEditingController name = TextEditingController();

  void _onSignUp(dynamic action) {
    if (action is SignUpSuccessful) {
      Navigator.pop(context);
    } else {
      // show error
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 32.0),
      child: Column(
        children: <Widget>[
          RegistrationInfoContainer(
            builder: (BuildContext context, RegistrationInfo info) {
              return Text(
                'Welcome to Instagram, ${info.username}',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w300,
                ),
              );
            },
          ),
          const SizedBox(height: 24.0),
          const Text(
            'Find people to follow and start sharing photos. You can change your username at any time.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14.0,
              color: Colors.white70,
              fontWeight: FontWeight.w300,
            ),
          ),
          const SizedBox(height: 24.0),
          Container(
            constraints: const BoxConstraints.expand(height: 48.0),
            child: RaisedButton(
              elevation: 0.0,
              color: Theme.of(context).accentColor,
              colorBrightness: Brightness.light,
              child: const Text('Next'),
              onPressed: () {
                StoreProvider.of<AppState>(context).dispatch(SignUp(_onSignUp));
              },
            ),
          ),
          const SizedBox(height: 24.0),
          FlatButton(
            onPressed: () {},
            textColor: Theme.of(context).accentColor,
            child: const Text('Change username'),
          ),
          const Spacer(),
          Text.rich(
            TextSpan(
              text: 'By signing up, you agree to out ',
              children: <TextSpan>[
                TextSpan(
                  text: 'Terms',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      print('Terms');
                    },
                ),
                const TextSpan(text: '. Learn how we collect, use and share your data in our '),
                TextSpan(
                  text: 'Data Policy',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      print('Data');
                    },
                ),
                const TextSpan(text: ' and how we use cookies and similar technology in our '),
                TextSpan(
                  text: 'Cookies Policy',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      print('Cookies');
                    },
                ),
                const TextSpan(text: '.'),
              ],
            ),
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 12.0,
              color: Colors.white70,
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    );
  }
}
