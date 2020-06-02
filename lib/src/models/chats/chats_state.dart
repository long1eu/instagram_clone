// File created by
// Lung Razvan <long1eu>
// on 02/06/2020

library chats_state;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:instagram_clone/src/models/chats/chat.dart';
import 'package:instagram_clone/src/models/serializers.dart';

part 'chats_state.g.dart';

abstract class ChatsState implements Built<ChatsState, ChatsStateBuilder> {
  factory ChatsState([void Function(ChatsStateBuilder b) updates]) = _$ChatsState;

  factory ChatsState.fromJson(dynamic json) => serializers.deserializeWith(serializer, json);

  ChatsState._();

  BuiltMap<String, Chat> get chats;

  @nullable
  String get selectedChatId;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<ChatsState> get serializer => _$chatsStateSerializer;
}
