// File created by
// Lung Razvan <long1eu>
// on 24/04/2020

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:instagram_clone/src/actions/reserve_username.dart';
import 'package:instagram_clone/src/actions/update_registration_info.dart';
import 'package:instagram_clone/src/containers/registration_info_container.dart';
import 'package:instagram_clone/src/models/app_state.dart';
import 'package:instagram_clone/src/models/registration_info.dart';

class NamePart extends StatefulWidget {
  const NamePart({Key key, @required this.onNext}) : super(key: key);

  final VoidCallback onNext;

  @override
  _NamePartState createState() => _NamePartState();
}

class _NamePartState extends State<NamePart> {
  final TextEditingController name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 32.0),
      child: Column(
        children: <Widget>[
          const Text(
            'Add your name',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w300,
            ),
          ),
          const SizedBox(height: 24.0),
          const Text(
            'Add your name so that friends can find you.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14.0,
              color: Colors.white70,
              fontWeight: FontWeight.w300,
            ),
          ),
          const SizedBox(height: 24.0),
          RegistrationInfoContainer(
            builder: (BuildContext context, RegistrationInfo info) {
              return TextFormField(
                controller: name,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'name',
                ),
                onChanged: (String value) {
                  StoreProvider.of<AppState>(context)
                      .dispatch(UpdateRegistrationInfo(info.copyWith(displayName: value)));
                },
                validator: (String value) {
                  if (value.trim().length < 3) {
                    return 'Please give us you name.';
                  }

                  return null;
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
                  StoreProvider.of<AppState>(context).dispatch(ReserveUsername());
                  FocusScope.of(context).requestFocus(FocusNode());
                  widget.onNext();
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
