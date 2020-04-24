// File created by
// Lung Razvan <long1eu>
// on 24/04/2020

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:instagram_clone/src/actions/update_registration_info.dart';
import 'package:instagram_clone/src/containers/registration_info_container.dart';
import 'package:instagram_clone/src/models/app_state.dart';
import 'package:instagram_clone/src/models/registration_info.dart';

class EmailPart extends StatefulWidget {
  const EmailPart({Key key, @required this.onNext}) : super(key: key);

  final VoidCallback onNext;

  @override
  _EmailPartState createState() => _EmailPartState();
}

class _EmailPartState extends State<EmailPart> with SingleTickerProviderStateMixin {
  final TextEditingController phone = TextEditingController();
  final TextEditingController email = TextEditingController();
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this) //
      ..addListener(() {
        setState(() {});
        FocusScope.of(context).requestFocus(FocusNode());
      });
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
              return TextField(
                controller: isPhone ? phone : email,
                keyboardType: isPhone ? TextInputType.phone : TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  hintText: isPhone ? 'phone' : 'email',
                ),
                onChanged: (String value) {
                  if (isPhone) {
                    // todo: add phone registration
                  } else {
                    info ??= const RegistrationInfo();
                    StoreProvider.of<AppState>(context).dispatch(UpdateRegistrationInfo(info.copyWith(email: value)));
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
                FocusScope.of(context).requestFocus(FocusNode());
                widget.onNext();
              },
            ),
          ),
        ],
      ),
    );
  }
}
