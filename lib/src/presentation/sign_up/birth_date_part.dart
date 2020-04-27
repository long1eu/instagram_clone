// File created by
// Lung Razvan <long1eu>
// on 24/04/2020

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:instagram_clone/src/actions/update_registration_info.dart';
import 'package:instagram_clone/src/containers/registration_info_container.dart';
import 'package:instagram_clone/src/models/app_state.dart';
import 'package:instagram_clone/src/models/registration_info.dart';
import 'package:intl/intl.dart';

class BirthDatePart extends StatelessWidget {
  const BirthDatePart({Key key, @required this.onNext}) : super(key: key);

  final VoidCallback onNext;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 32.0),
      child: RegistrationInfoContainer(
        builder: (BuildContext context, RegistrationInfo info) {
          final DateTime birthDate = info.birthDate ?? DateTime.now();
          final DateFormat format = DateFormat.yMMMMd();
          final int years = DateTime.now().difference(birthDate).inDays ~/ 365;

          return Column(
            children: <Widget>[
              const Text(
                'Add your date of birth',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w300,
                ),
              ),
              const SizedBox(height: 24.0),
              Text.rich(
                TextSpan(
                  text: 'This won\'t be a part of your public profile.\n',
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Why do I need to provide my date of birth?',
                      style: TextStyle(
                        color: Colors.lightBlue.shade50,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          print('show docs');
                        },
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 14.0,
                  color: Colors.white70,
                  fontWeight: FontWeight.w300,
                ),
              ),
              const SizedBox(height: 16.0),
              Container(
                constraints: const BoxConstraints.expand(height: 48.0),
                child: OutlineButton(
                  onPressed: () {},
                  borderSide: BorderSide(
                    color: Theme.of(context).accentColor,
                  ),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          alignment: AlignmentDirectional.centerStart,
                          child: Text(format.format(birthDate)),
                        ),
                      ),
                      Text(
                        '$years ${years == 1 ? 'year' : 'years'} old',
                        style: TextStyle(
                          color: years <= 4 ? Colors.red : Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 4.0),
              Container(
                alignment: AlignmentDirectional.centerStart,
                child: const Text(
                  'Add your name so that friends can find you.',
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.white70,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              const Spacer(),
              Container(
                alignment: AlignmentDirectional.centerStart,
                child: const Text(
                  'Use your own birth date, even if this account is for bussiness a pet or something else.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.white70,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              Container(
                constraints: const BoxConstraints.expand(height: 48.0),
                child: RaisedButton(
                  elevation: 0.0,
                  color: Theme.of(context).accentColor,
                  colorBrightness: Brightness.light,
                  child: const Text('Next'),
                  onPressed: () {
                    if (years > 4) {
                      FocusScope.of(context).requestFocus(FocusNode());
                      onNext();
                    }
                  },
                ),
              ),
              Theme(
                data: Theme.of(context).copyWith(
                  cupertinoOverrideTheme: const CupertinoThemeData(
                    textTheme: CupertinoTextThemeData(
                      primaryColor: Colors.white,
                    ),
                  ),
                ),
                child: Container(
                  height: MediaQuery.of(context).size.height * .20,
                  child: CupertinoDatePicker(
                    mode: CupertinoDatePickerMode.date,
                    initialDateTime: DateTime.now(),
                    maximumDate: DateTime.now(),
                    onDateTimeChanged: (DateTime value) {
                      StoreProvider.of<AppState>(context)
                          .dispatch(UpdateRegistrationInfo(info.copyWith(birthDate: value)));
                    },
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
