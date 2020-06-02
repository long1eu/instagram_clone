// File created by
// Lung Razvan <long1eu>
// on 02/06/2020

library create_chat;

import 'package:built_value/built_value.dart';
import 'package:instagram_clone/src/actions/actions.dart';
import 'package:instagram_clone/src/models/chats/chat.dart';

part 'create_chat.g.dart';

abstract class CreateChat //
    implements
        Built<CreateChat, CreateChatBuilder>,
        AppAction //
{
  factory CreateChat(String otherUid) {
    return _$CreateChat((CreateChatBuilder b) {
      b.otherUid = otherUid;
    });
  }

  CreateChat._();

  String get otherUid;
}

abstract class CreateChatSuccessful //
    implements
        Built<CreateChatSuccessful, CreateChatSuccessfulBuilder>,
        AppAction //
{
  factory CreateChatSuccessful(Chat chat) {
    return _$CreateChatSuccessful((CreateChatSuccessfulBuilder b) {
      b.chat = chat.toBuilder();
    });
  }

  CreateChatSuccessful._();

  Chat get chat;
}

abstract class CreateChatError //
    implements
        Built<CreateChatError, CreateChatErrorBuilder>,
        ErrorAction //
{
  factory CreateChatError(Object error) {
    return _$CreateChatError((CreateChatErrorBuilder b) => b.error = error);
  }

  CreateChatError._();

  @override
  Object get error;
}
