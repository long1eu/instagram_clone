// File created by
// Lung Razvan <long1eu>
// on 02/06/2020

library message;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:instagram_clone/src/models/serializers.dart';
import 'package:meta/meta.dart';

part 'message.g.dart';

// messages/{message_id}
abstract class Message implements Built<Message, MessageBuilder> {
  factory Message({
    @required String id,
    @required String chatId,
    @required String uid,
    @required String message,
    @required DateTime createdAt,
  }) {
    return _$Message((MessageBuilder b) {
      b
        ..id = id
        ..chatId = chatId
        ..uid = uid
        ..message = message
        ..createdAt = createdAt;
    });
  }

  factory Message.fromJson(dynamic json) => serializers.deserializeWith(serializer, json);

  Message._();

  String get id;

  String get chatId;

  String get uid;

  String get message;

  DateTime get createdAt;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<Message> get serializer => _$messageSerializer;
}
