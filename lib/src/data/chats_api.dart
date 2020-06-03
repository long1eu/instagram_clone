// File created by
// Lung Razvan <long1eu>
// on 06/05/2020

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:instagram_clone/src/models/chats/chat.dart';
import 'package:instagram_clone/src/models/chats/message.dart';
import 'package:meta/meta.dart';

class ChatsApi {
  const ChatsApi({@required Firestore firestore})
      : assert(firestore != null),
        _firestore = firestore;

  final Firestore _firestore;

  Future<Chat> createChat(List<String> users) async {
    final DocumentReference chatRef = _firestore.collection('chats').document();
    final Chat chat = Chat(id: chatRef.documentID, users: users);
    await chatRef.setData(chat.json);
    return chat;
  }

  Stream<List<Chat>> listenForChats(String uid) {
    return _firestore
        .collection('chats')
        .where('users', arrayContains: uid)
        .snapshots()
        .map((QuerySnapshot snapshot) => snapshot.documents //
            .map((DocumentSnapshot document) => Chat.fromJson(document.data))
            .toList());
  }

  Future<Message> createMessage({@required String chatId, @required String uid, @required String text}) async {
    final DocumentReference messageRef = _firestore.collection('messages').document();

    final Message message = Message(
      id: messageRef.documentID,
      chatId: chatId,
      uid: uid,
      message: text,
      createdAt: DateTime.now().toUtc(),
    );

    await messageRef.setData(message.json);
    return message;
  }

  Stream<List<Message>> listenForMessages(String chatId) {
    return _firestore //
        .collection('messages')
        .where('chatId', isEqualTo: chatId)
        .snapshots(includeMetadataChanges: true)
        .map((QuerySnapshot snapshot) => snapshot.documents //
            .map((DocumentSnapshot document) => Message.fromJson(document.data))
            .toList());
  }
}
