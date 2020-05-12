// File created by
// Lung Razvan <long1eu>
// on 24/04/2020

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:instagram_clone/src/actions/auth/signup.dart';
import 'package:instagram_clone/src/actions/auth/update_registration_info.dart';
import 'package:instagram_clone/src/containers/registration_info_container.dart';
import 'package:instagram_clone/src/models/app_state.dart';
import 'package:instagram_clone/src/models/auth/registration_info.dart';

class SmsCodePart extends StatefulWidget {
  const SmsCodePart({Key key, @required this.onNext}) : super(key: key);

  final VoidCallback onNext;

  @override
  _SmsCodePartState createState() => _SmsCodePartState();
}

class _SmsCodePartState extends State<SmsCodePart> {
  final TextEditingController smsCode = TextEditingController();

  bool isLoading = false;

  void _result(dynamic action) {
    setState(() => isLoading = false);

    if (action is SignUpSuccessful) {
      FocusScope.of(context).requestFocus(FocusNode());
      widget.onNext();
    } else if (action is SignUpError) {
      showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Sms code error'),
            content: Text(action.error.toString()),
            actions: <Widget>[
              FlatButton(
                child: const Text('OK'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 32.0),
      child: RegistrationInfoContainer(
        builder: (BuildContext context, RegistrationInfo info) {
          return Column(
            children: <Widget>[
              Text(
                'Enter the code we sent to ${info.phone}',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w300,
                ),
              ),
              const SizedBox(height: 24.0),
              Text.rich(
                const TextSpan(
                  children: <TextSpan>[
                    TextSpan(text: 'Change phone number'),
                    TextSpan(
                      text: ' or ',
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    TextSpan(text: 'Send SMS message again'),
                  ],
                ),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14.0,
                  color: Theme.of(context).accentColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 24.0),
              TextFormField(
                controller: smsCode,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Confirmation Code',
                ),
                onChanged: (String value) {
                  final RegistrationInfo newInfo = info.rebuild((RegistrationInfoBuilder b) => b.smsCode = value);
                  StoreProvider.of<AppState>(context).dispatch(UpdateRegistrationInfo(newInfo));
                },
                validator: (String value) {
                  if (value.length == 6) {
                    return null;
                  }

                  return 'The verification code is a 6 digit number.';
                },
              ),
              const SizedBox(height: 24.0),
              Container(
                constraints: const BoxConstraints.expand(height: 48.0),
                child: RaisedButton(
                  elevation: 0.0,
                  color: Theme.of(context).accentColor,
                  colorBrightness: Brightness.light,
                  child: const Text('Next'),
                  onPressed: isLoading
                      ? null
                      : () {
                          if (Form.of(context).validate()) {
                            setState(() => isLoading = true);
                            StoreProvider.of<AppState>(context).dispatch(SignUp(_result));
                          }
                        },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
