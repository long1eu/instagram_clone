// File created by
// Lung Razvan <long1eu>
// on 24/04/2020

import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:instagram_clone/src/actions/auth/send_sms.dart';
import 'package:instagram_clone/src/actions/auth/update_registration_info.dart';
import 'package:instagram_clone/src/containers/registration_info_container.dart';
import 'package:instagram_clone/src/models/app_state.dart';
import 'package:instagram_clone/src/models/auth/registration_info.dart';

enum RegisterType { email, phone }

class EmailAndPhonePart extends StatefulWidget {
  const EmailAndPhonePart({Key key, @required this.onNext, @required this.onChanged}) : super(key: key);

  final VoidCallback onNext;
  final ValueChanged<RegisterType> onChanged;

  @override
  _EmailAndPhonePartState createState() => _EmailAndPhonePartState();
}

class _EmailAndPhonePartState extends State<EmailAndPhonePart> with SingleTickerProviderStateMixin {
  final TextEditingController phone = TextEditingController();
  final TextEditingController email = TextEditingController();
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this, initialIndex: 1) //
      ..addListener(() {
        widget.onChanged(tabController.index == 0 ? RegisterType.phone : RegisterType.email);

        setState(() {});
        Form.of(context).reset();
        FocusScope.of(context).requestFocus(FocusNode());
      });
  }

  void _onSmsSent(dynamic action) {
    if (action is SendSmsSuccessful) {
      FocusScope.of(context).requestFocus(FocusNode());
      widget.onNext();
    } else if (action is SendSmsError) {
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
    final bool isPhone = tabController.index == 0;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 32.0),
      child: Column(
        children: <Widget>[
          const Text(
            'Enter phone number or email address',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w300,
            ),
          ),
          const SizedBox(height: 24.0),
          TabBar(
            controller: tabController,
            indicatorColor: Colors.white,
            tabs: const <Tab>[
              Tab(
                child: Text(
                  'Phone',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'Email',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
            ],
          ),
          const Divider(height: 0.0, color: Colors.white),
          const SizedBox(height: 24.0),
          RegistrationInfoContainer(
            builder: (BuildContext context, RegistrationInfo info) {
              return TextFormField(
                controller: isPhone ? phone : email,
                keyboardType: isPhone ? TextInputType.phone : TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  hintText: isPhone ? 'phone' : 'email',
                ),
                onChanged: (String value) {
                  if (isPhone) {
                    info ??= RegistrationInfo();
                    final RegistrationInfo newInfo = info.rebuild((RegistrationInfoBuilder b) => b.phone = value);
                    StoreProvider.of<AppState>(context).dispatch(UpdateRegistrationInfo(newInfo));
                  } else {
                    info ??= RegistrationInfo();
                    final RegistrationInfo newInfo = info.rebuild((RegistrationInfoBuilder b) => b.email = value);
                    StoreProvider.of<AppState>(context).dispatch(UpdateRegistrationInfo(newInfo));
                  }
                },
                validator: (String value) {
                  if (isPhone) {
                    if (value.length < 10) {
                      return 'Your phone number is to short.';
                    } else if (value.length > 10) {
                      return 'Your phone number is to long.';
                    } else if (!value.startsWith('07')) {
                      return 'You need to used a mobile phone number from Romania.';
                    }

                    return null;
                  } else {
                    if (!EmailValidator.validate(value)) {
                      return 'This doesn\'t look like an email address.';
                    }

                    return null;
                  }
                },
              );
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
              onPressed: () {
                if (Form.of(context).validate()) {
                  if (isPhone) {
                    StoreProvider.of<AppState>(context).dispatch(SendSms(_onSmsSent));
                  } else {
                    FocusScope.of(context).requestFocus(FocusNode());
                    widget.onNext();
                  }
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
