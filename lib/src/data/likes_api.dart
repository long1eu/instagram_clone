// File created by
// Lung Razvan <long1eu>
// on 06/05/2020

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:instagram_clone/src/models/likes/like.dart';
import 'package:instagram_clone/src/models/likes/like_type.dart';
import 'package:meta/meta.dart';

class LikesApi {
  const LikesApi({@required Firestore firestore})
      : assert(firestore != null),
        _firestore = firestore;

  final Firestore _firestore;

  Future<List<Like>> getLikes(String parentId) async {
    final QuerySnapshot snapshot = await _firestore //
        .collection('likes')
        .where('parentId', isEqualTo: parentId)
        .getDocuments();

    return snapshot //
        .documents
        .map((DocumentSnapshot snapshot) => Like.fromJson(snapshot.data))
        .toList();
  }

  // 1. Create like
  // 2. Save like
  Future<Like> create({
    @required String uid,
    @required String parentId,
    @required LikeType type,
  }) async {
    // Create like object
    final DocumentReference documentRef = _firestore.collection('likes').document();
    final Like like = Like(
      id: documentRef.documentID,
      parentId: parentId,
      uid: uid,
      type: type,
    );

    // Save like object
    await documentRef.setData(like.json);
    return like;
  }

  Future<void> delete(String likeId) async {
    final DocumentReference documentRef = _firestore.document('likes/$likeId');
    await documentRef.delete();
  }
}
