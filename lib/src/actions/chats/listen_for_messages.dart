// File created by
// Lung Razvan <long1eu>
// on 02/06/2020

library listen_for_messages;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:instagram_clone/src/actions/actions.dart';
import 'package:instagram_clone/src/models/chats/message.dart';

part 'listen_for_messages.g.dart';

abstract class ListenForMessages //
    implements
        Built<ListenForMessages, ListenForMessagesBuilder>,
        AppAction //
{
  factory ListenForMessages() = _$ListenForMessages;

  ListenForMessages._();
}

abstract class StopListenForMessages //
    implements
        Built<StopListenForMessages, StopListenForMessagesBuilder>,
        AppAction //
{
  factory StopListenForMessages() = _$StopListenForMessages;

  StopListenForMessages._();
}

abstract class OnMessagesEvent //
    implements
        Built<OnMessagesEvent, OnMessagesEventBuilder>,
        AppAction //
{
  factory OnMessagesEvent(List<Message> messages) {
    return _$OnMessagesEvent((OnMessagesEventBuilder b) {
      b.messages = ListBuilder<Message>(messages);
    });
  }

  OnMessagesEvent._();

  BuiltList<Message> get messages;
}

abstract class ListenForMessagesError //
    implements
        Built<ListenForMessagesError, ListenForMessagesErrorBuilder>,
        ErrorAction //
{
  factory ListenForMessagesError(Object error) {
    return _$ListenForMessagesError((ListenForMessagesErrorBuilder b) => b.error = error);
  }

  ListenForMessagesError._();

  @override
  Object get error;
}
