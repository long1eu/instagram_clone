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
  // 3. Update likes count on post/comment
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

    // Update likes count
    String parent;
    if (type == LikeType.post) {
      parent = 'posts';
    } else if (type == LikeType.comment) {
      parent = 'comments';
    } else {
      throw ArgumentError('This parent does not exists $type');
    }
    final DocumentReference parentRef = _firestore.document('$parent/$parentId');
    await parentRef.updateData(<String, dynamic>{'likes': FieldValue.increment(1)});

    return like;
  }
}
