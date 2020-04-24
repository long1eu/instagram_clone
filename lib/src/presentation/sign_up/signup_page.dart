// File created by
// Lung Razvan <long1eu>
// on 10/04/2020

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/src/presentation/sign_up/birth_date_part.dart';
import 'package:instagram_clone/src/presentation/sign_up/email_part.dart';
import 'package:instagram_clone/src/presentation/sign_up/name_part.dart';
import 'package:instagram_clone/src/presentation/sign_up/password_part.dart';
import 'package:instagram_clone/src/presentation/sign_up/username_part.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Flexible(
              child: PageView(
                controller: controller,
                physics: const NeverScrollableScrollPhysics(),
                children: <Widget>[
                  EmailPart(
                    onNext: () {
                      controller.nextPage(duration: const Duration(milliseconds: 300), curve: Curves.linear);
                    },
                  ),
                  NamePart(
                    onNext: () {
                      controller.nextPage(duration: const Duration(milliseconds: 300), curve: Curves.linear);
                    },
                  ),
                  PasswordPart(
                    onNext: () {
                      controller.nextPage(duration: const Duration(milliseconds: 300), curve: Curves.linear);
                    },
                  ),
                  BirthDatePart(
                    onNext: () {
                      controller.nextPage(duration: const Duration(milliseconds: 300), curve: Curves.linear);
                    },
                  ),
                  UsernamePart(
                    onNext: () {
                      controller.nextPage(duration: const Duration(milliseconds: 300), curve: Curves.linear);
                    },
                  ),
                ],
              ),
            ),
            const Divider(),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Text.rich(
                TextSpan(
                  text: 'Already have an account? ',
                  style: const TextStyle(
                    fontSize: 12.0,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Sign in',
                      style: TextStyle(
                        color: Theme.of(context).accentColor,
                        fontWeight: FontWeight.bold,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.pop(context);
                        },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
