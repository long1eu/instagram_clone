// File created by
// Lung Razvan <long1eu>
// on 06/05/2020

import 'package:instagram_clone/src/actions/chats/create_chat.dart';
import 'package:instagram_clone/src/actions/chats/listen_for_chats.dart';
import 'package:instagram_clone/src/actions/chats/listen_for_messages.dart';
import 'package:instagram_clone/src/actions/chats/set_selected_chat.dart';
import 'package:instagram_clone/src/models/chats/chat.dart';
import 'package:instagram_clone/src/models/chats/chats_state.dart';
import 'package:instagram_clone/src/models/chats/message.dart';
import 'package:redux/redux.dart';

Reducer<ChatsState> chatsReducer = combineReducers<ChatsState>(<Reducer<ChatsState>>[
  TypedReducer<ChatsState, CreateChatSuccessful>(_createChatSuccessful),
  TypedReducer<ChatsState, OnChatEvent>(_onChatEvent),
  TypedReducer<ChatsState, OnMessagesEvent>(_onMessagesEvent),
  TypedReducer<ChatsState, SetSelectedChat>(_setSelectedChat),
]);

ChatsState _createChatSuccessful(ChatsState state, CreateChatSuccessful action) {
  return state.rebuild((ChatsStateBuilder b) => b.selectedChatId = action.chat.id);
}

ChatsState _onChatEvent(ChatsState state, OnChatEvent action) {
  return state.rebuild((ChatsStateBuilder b) {
    for (Chat chat in action.chats) {
      b.chats[chat.id] = chat;
    }
  });
}

ChatsState _onMessagesEvent(ChatsState state, OnMessagesEvent action) {
  return state.rebuild((ChatsStateBuilder b) {
    for (Message message in action.messages) {
      b.messages[message.id] = message;
    }
  });
}

ChatsState _setSelectedChat(ChatsState state, SetSelectedChat action) {
  return state.rebuild((ChatsStateBuilder b) {
    b.selectedChatId = action.chatId;
  });
}
