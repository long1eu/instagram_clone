// File created by
// Lung Razvan <long1eu>
// on 03/06/2020

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:instagram_clone/src/models/app_state.dart';
import 'package:instagram_clone/src/models/chats/message.dart';
import 'package:redux/redux.dart';

class MessagesContainer extends StatelessWidget {
  const MessagesContainer({Key key, @required this.builder}) : super(key: key);

  final ViewModelBuilder<List<Message>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<Message>>(
      converter: (Store<AppState> store) {
        return store.state.chats.messages.values //
            .where((Message message) => message.chatId == store.state.chats.selectedChatId)
            .toList()
              ..sort();
      },
      builder: builder,
    );
  }
}
