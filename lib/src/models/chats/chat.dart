// File created by
// Lung Razvan <long1eu>
// on 02/06/2020

library chat;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:instagram_clone/src/models/chats/message.dart';
import 'package:instagram_clone/src/models/serializers.dart';
import 'package:meta/meta.dart';

part 'chat.g.dart';

// chats/{chat_id}
abstract class Chat implements Built<Chat, ChatBuilder> {
  factory Chat({
    @required String id,
    @required List<String> users,
    Message lastMessage,
  }) {
    return _$Chat((ChatBuilder b) {
      b
        ..id = id
        ..users = ListBuilder<String>(users)
        ..lastMessage = lastMessage?.toBuilder();
    });
  }

  factory Chat.fromJson(dynamic json) => serializers.deserializeWith(serializer, json);

  Chat._();

  String get id;

  BuiltList<String> get users;

  @nullable
  Message get lastMessage;

  // todo: add unread counter

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<Chat> get serializer => _$chatSerializer;
}
