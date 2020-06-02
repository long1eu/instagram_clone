// File created by
// Lung Razvan <long1eu>
// on 02/06/2020

library listen_for_chats;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:instagram_clone/src/actions/actions.dart';
import 'package:instagram_clone/src/models/chats/chat.dart';

part 'listen_for_chats.g.dart';

abstract class ListenForChats //
    implements
        Built<ListenForChats, ListenForChatsBuilder>,
        AppAction //
{
  factory ListenForChats() = _$ListenForChats;

  ListenForChats._();
}

abstract class StopListenForChats //
    implements
        Built<StopListenForChats, StopListenForChatsBuilder>,
        AppAction //
{
  factory StopListenForChats() = _$StopListenForChats;

  StopListenForChats._();
}

abstract class OnChatEvent //
    implements
        Built<OnChatEvent, OnChatEventBuilder>,
        AppAction //
{
  factory OnChatEvent(List<Chat> chats) {
    return _$OnChatEvent((OnChatEventBuilder b) {
      b.chats = ListBuilder<Chat>(chats);
    });
  }

  OnChatEvent._();

  BuiltList<Chat> get chats;
}

abstract class ListenForChatsError //
    implements
        Built<ListenForChatsError, ListenForChatsErrorBuilder>,
        ErrorAction //
{
  factory ListenForChatsError(Object error) {
    return _$ListenForChatsError((ListenForChatsErrorBuilder b) => b.error = error);
  }

  ListenForChatsError._();

  @override
  Object get error;
}
