// File created by
// Lung Razvan <long1eu>
// on 06/05/2020

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:instagram_clone/src/models/post.dart';
import 'package:meta/meta.dart';

class PostApi {
  const PostApi({@required Firestore firestore})
      : assert(firestore != null),
        _firestore = firestore;

  final Firestore _firestore;

  Future<Post> createPost({@required String uid, @required String description, @required List<String> pictures}) async {
    final DocumentReference reference = _firestore.collection('posts').document();
    final Post post = Post(id: reference.documentID, uid: uid, description: description, pictures: pictures);
    await reference.setData(post.json);
    return post;
  }
}
