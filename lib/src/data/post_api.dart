// File created by
// Lung Razvan <long1eu>
// on 06/05/2020

import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:instagram_clone/src/models/post.dart';
import 'package:meta/meta.dart';
import 'package:path/path.dart';

class PostApi {
  const PostApi({@required Firestore firestore, @required FirebaseStorage storage})
      : assert(firestore != null),
        assert(storage != null),
        _firestore = firestore,
        _storage = storage;

  final Firestore _firestore;
  final FirebaseStorage _storage;

  Future<Post> createPost({@required String uid, @required String description, @required List<String> pictures}) async {
    final List<String> downloadUrls = <String>[];
    for (int i = 0; i < pictures.length; i++) {
      final String file = pictures[i];

      final StorageReference storageRef = _storage.ref().child('users/$uid/posts/${basename(file)}');
      await storageRef.putFile(File(file)).onComplete;
      final String url = await storageRef.getDownloadURL();
      downloadUrls.add(url);

      await File(file).delete();
    }

    final DocumentReference reference = _firestore.collection('posts').document();
    final Post post = Post(id: reference.documentID, uid: uid, description: description, pictures: downloadUrls);
    await reference.setData(post.json);
    return post;
  }
}
