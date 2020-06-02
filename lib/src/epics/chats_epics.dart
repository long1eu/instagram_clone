// File created by
// Lung Razvan <long1eu>
// on 08/05/2020

import 'package:instagram_clone/src/actions/actions.dart';
import 'package:instagram_clone/src/actions/auth/get_contact.dart';
import 'package:instagram_clone/src/actions/chats/create_chat.dart';
import 'package:instagram_clone/src/actions/chats/create_message.dart';
import 'package:instagram_clone/src/actions/chats/listen_for_chats.dart';
import 'package:instagram_clone/src/actions/chats/listen_for_messages.dart';
import 'package:instagram_clone/src/data/chats_api.dart';
import 'package:instagram_clone/src/models/app_state.dart';
import 'package:instagram_clone/src/models/chats/chat.dart';
import 'package:instagram_clone/src/models/chats/message.dart';
import 'package:meta/meta.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

class ChatsEpics {
  const ChatsEpics({
    @required ChatsApi chatsApi,
  })  : assert(chatsApi != null),
        _api = chatsApi;

  final ChatsApi _api;

  Epic<AppState> get epics {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, CreateChat>(_createChat),
      TypedEpic<AppState, CreateMessage>(_createMessage),
      _listenForChats,
      _listenForMessages,
    ]);
  }

  Stream<AppAction> _createChat(Stream<CreateChat> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((CreateChat action) => _api
            .createChat(<String>[store.state.auth.user.uid, action.otherUid])
            .asStream()
            .map<AppAction>((Chat chat) => CreateChatSuccessful(chat))
            .onErrorReturnWith((dynamic error) => CreateChatError(error)));
  }

  Stream<AppAction> _createMessage(Stream<CreateMessage> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((CreateMessage action) => _api
            .createMessage(
              chatId: store.state.chats.selectedChatId,
              uid: store.state.auth.user.uid,
              text: action.text,
            )
            .asStream()
            .map<AppAction>((Message message) => CreateMessageSuccessful(message))
            .onErrorReturnWith((dynamic error) => CreateMessageError(error)));
  }

  Stream<AppAction> _listenForChats(Stream<dynamic> actions, EpicStore<AppState> store) {
    return actions //
        .whereType<ListenForChats>()
        .flatMap((ListenForChats action) => _api
            .listenForChats(store.state.auth.user.uid)
            .takeUntil(actions.whereType<StopListenForChats>())
            .expand<AppAction>((List<Chat> chats) => <AppAction>[
                  OnChatEvent(chats),
                  ...chats
                      .expand((Chat chat) => chat.users)
                      .where((String uid) => store.state.auth.contacts[uid] == null)
                      .map((String uid) => GetContact(uid))
                ])
            .onErrorReturnWith((dynamic error) => ListenForChatsError(error)));
  }

  Stream<AppAction> _listenForMessages(Stream<dynamic> actions, EpicStore<AppState> store) {
    return actions //
        .whereType<ListenForMessages>()
        .flatMap((ListenForMessages action) => _api
            .listenForMessages(store.state.chats.selectedChatId)
            .map<AppAction>((List<Message> messages) => OnMessagesEvent(messages))
            .takeUntil(actions.whereType<StopListenForMessages>())
            .onErrorReturnWith((dynamic error) => ListenForMessagesError(error)));
  }
}
