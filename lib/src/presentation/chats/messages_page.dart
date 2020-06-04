// File created by
// Lung Razvan <long1eu>
// on 03/06/2020

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:instagram_clone/src/actions/chats/create_message.dart';
import 'package:instagram_clone/src/actions/chats/listen_for_messages.dart';
import 'package:instagram_clone/src/containers/contacts_container.dart';
import 'package:instagram_clone/src/containers/messages_container.dart';
import 'package:instagram_clone/src/containers/selected_chat_container.dart';
import 'package:instagram_clone/src/containers/user_container.dart';
import 'package:instagram_clone/src/models/app_state.dart';
import 'package:instagram_clone/src/models/auth/app_user.dart';
import 'package:instagram_clone/src/models/chats/chat.dart';
import 'package:instagram_clone/src/models/chats/message.dart';
import 'package:redux/redux.dart';

class MessagesPage extends StatefulWidget {
  const MessagesPage({Key key}) : super(key: key);

  @override
  _MessagesPageState createState() => _MessagesPageState();
}

class _MessagesPageState extends State<MessagesPage> {
  final TextEditingController _controller = TextEditingController();
  Store<AppState> store;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      store = StoreProvider.of<AppState>(context);
      store.dispatch(ListenForMessages());
    });
  }

  @override
  void dispose() {
    store.dispatch(StopListenForMessages());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return UserContainer(
      builder: (BuildContext context, AppUser currentUser) {
        return ContactsContainer(
          builder: (BuildContext context, Map<String, AppUser> contacts) {
            return ChatContainer(
              builder: (BuildContext context, Chat chat) {
                if (chat == null) {
                  return const Center(child: CircularProgressIndicator());
                }

                final String otherUid = chat.users.firstWhere((String uid) => uid != currentUser.uid);
                final AppUser user = contacts[otherUid];
                if (user == null) {
                  return const Center(child: CircularProgressIndicator());
                }

                return Scaffold(
                  appBar: AppBar(
                    title: Text('@${user.username}'),
                  ),
                  body: DefaultTextStyle(
                    style: Theme.of(context).textTheme.bodyText2.copyWith(
                          fontSize: 16.0,
                        ),
                    child: Column(
                      children: <Widget>[
                        Flexible(
                          child: MessagesContainer(
                            builder: (BuildContext context, List<Message> messages) {
                              if (messages.isEmpty) {
                                return const Center(
                                  child: Text('Start chatting'),
                                );
                              }

                              return ListView.builder(
                                itemCount: messages.length,
                                padding: const EdgeInsetsDirectional.only(
                                  bottom: 16.0,
                                  start: 16.0,
                                  end: 16.0,
                                ),
                                reverse: true,
                                itemBuilder: (BuildContext context, int index) {
                                  final Message message = messages[index];
                                  final bool isMe = message.uid == currentUser.uid;

                                  return Container(
                                    alignment: isMe ? AlignmentDirectional.centerEnd : AlignmentDirectional.centerStart,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(vertical: 1.0),
                                      padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
                                      decoration: BoxDecoration(
                                        color: isMe ? Theme.of(context).primaryColor : Theme.of(context).accentColor,
                                        borderRadius: BorderRadius.circular(8.0),
                                      ),
                                      child: Text(
                                        message.message,
                                        style: TextStyle(
                                          color: isMe ? Colors.white : Colors.black,
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                          ),
                        ),
                        const Divider(height: 0.0),
                        SafeArea(
                          top: false,
                          right: false,
                          left: false,
                          child: Row(
                            children: <Widget>[
                              const SizedBox(width: 16.0),
                              Flexible(
                                child: TextField(
                                  controller: _controller,
                                ),
                              ),
                              const SizedBox(width: 8.0),
                              IconButton(
                                icon: const Icon(Icons.send),
                                onPressed: () {
                                  if (_controller.text.trim().isNotEmpty) {
                                    StoreProvider.of<AppState>(context).dispatch(CreateMessage(_controller.text));
                                    _controller.clear();
                                  }
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
        );
      },
    );
  }
}
