// File created by
// Lung Razvan <long1eu>
// on 06/05/2020

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:instagram_clone/src/models/comments/comment.dart';
import 'package:meta/meta.dart';
import 'package:rxdart/rxdart.dart';

class CommentsApi {
  const CommentsApi({@required Firestore firestore})
      : assert(firestore != null),
        _firestore = firestore;

  final Firestore _firestore;

  Stream<List<Comment>> listen(String postId) {
    return _firestore
        .collection('comments')
        .where('postId', isEqualTo: postId)
        .snapshots()
        .map((QuerySnapshot snapshot) => snapshot.documents //
            .map((DocumentSnapshot document) => Comment.fromJson(document.data))
            .toList())
        .doOnData((List<Comment> list) => list.sort());
  }

  Future<Comment> create({@required String uid, @required String postId, @required String text}) async {
    final DocumentReference reference = _firestore.collection('comments').document();
    final Comment comment = Comment(id: reference.documentID, uid: uid, postId: postId, text: text);
    await reference.setData(comment.json);
    return comment;
  }
}
