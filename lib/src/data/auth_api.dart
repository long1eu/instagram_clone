// File created by
// Lung Razvan <long1eu>
// on 10/04/2020

import 'dart:async';
import 'dart:math';

import 'package:algolia/algolia.dart';
import 'package:built_collection/built_collection.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:instagram_clone/src/models/auth/app_user.dart';
import 'package:instagram_clone/src/models/auth/registration_info.dart';
import 'package:meta/meta.dart';

class AuthApi {
  const AuthApi({
    @required FirebaseAuth auth,
    @required FirebaseMessaging messaging,
    @required Firestore firestore,
    @required CloudFunctions cloudFunctions,
    @required AlgoliaIndexReference index,
  })  : assert(auth != null),
        assert(messaging != null),
        assert(firestore != null),
        assert(cloudFunctions != null),
        assert(index != null),
        _auth = auth,
        _messaging = messaging,
        _firestore = firestore,
        _cloudFunctions = cloudFunctions,
        _index = index;

  final FirebaseAuth _auth;
  final FirebaseMessaging _messaging;
  final Firestore _firestore;
  final CloudFunctions _cloudFunctions;
  final AlgoliaIndexReference _index;

  /// Returns the current login in user or null if there is no user logged in.
  Future<AppUser> getUser() async {
    final FirebaseUser firebaseUser = await _auth.currentUser();
    return _buildUser(firebaseUser);
  }

  /// Tries to log the user in using his email and password
  Future<AppUser> login(String email, String password) async {
    final AuthResult result = await _auth.signInWithEmailAndPassword(email: email, password: password);
    await _messaging.subscribeToTopic(result.user.uid);
    return _buildUser(result.user);
  }

  /// Logs the user out
  Future<void> logOut(String uid) async {
    await _messaging.unsubscribeFromTopic(uid);
    await _auth.signOut();
  }

  /// Send the reset password link to the [email]
  Future<void> sendForgotPasswordEmail(String email) async {
    await _auth.sendPasswordResetEmail(email: email);
  }

  /// Create new user with email and password
  Future<AppUser> signUp(RegistrationInfo info) async {
    AuthResult result;
    if (info.email != null) {
      result = await _auth.createUserWithEmailAndPassword(email: info.email, password: info.password);
    } else {
      assert(info.phone != null);
      assert(info.verificationId != null);
      assert(info.smsCode != null);

      final AuthCredential credential =
          PhoneAuthProvider.getCredential(verificationId: info.verificationId, smsCode: info.smsCode);
      result = await _auth.signInWithCredential(credential);
    }

    await _messaging.subscribeToTopic(result.user.uid);
    return _buildUser(result.user, info);
  }

  /// Send an SMS to the user and return the verificationId to be used for login
  Future<String> sendSms(String phone) async {
    final Completer<String> completer = Completer<String>();

    _auth.verifyPhoneNumber(
      phoneNumber: '+4$phone',
      timeout: Duration.zero,
      verificationCompleted: (_) {},
      codeAutoRetrievalTimeout: (_) {},
      codeSent: (String verificationId, [_]) {
        completer.complete(verificationId);
      },
      verificationFailed: (AuthException error) {
        completer.completeError(error);
      },
    );

    return completer.future;
  }

  Future<AppUser> _buildUser(FirebaseUser firebaseUser, [RegistrationInfo info]) async {
    if (firebaseUser == null) {
      return null;
    }

    final DocumentSnapshot snapshot = await _firestore.document('users/${firebaseUser.uid}').get();
    if (snapshot.exists && info == null) {
      return AppUser.fromJson(snapshot.data);
    }

    assert(info != null);
    final AppUser user = AppUser((AppUserBuilder b) {
      b
        ..uid = firebaseUser.uid
        ..displayName = info.displayName
        ..username = info.username
        ..email = info.email
        ..birthDate = info.birthDate
        ..phone = info.phone
        ..following = ListBuilder<String>();
    });

    await _firestore.document('users/${user.uid}').setData(user.json);
    return user;
  }

  Future<String> reserveUsername({@required String email, @required String displayName}) async {
    if (email != null) {
      final String username = email.split('@')[0];
      if (await _checkUsername(username) != null) {
        return username;
      }
    }

    String username = displayName.split(' ').join('.').toLowerCase();
    if (await _checkUsername(username) != null) {
      return username;
    }

    final Random random = Random();
    if (email != null) {
      username = email.split('@')[0] + '${random.nextInt(1 << 32)}';
    } else {
      username = displayName.split(' ').join('.') + '${random.nextInt(1 << 32)}';
    }
    return username;
  }

  Future<AppUser> getContact(String uid) async {
    final DocumentSnapshot snapshot = await _firestore.document('users/$uid').get();
    return AppUser.fromJson(snapshot.data);
  }

  Future<List<AppUser>> searchUsers({@required String uid, @required String query}) async {
    final AlgoliaQuerySnapshot result = await _index //
        .setFacetFilter('uid:-$uid')
        .search(query)
        .getObjects();

    if (result.empty) {
      return <AppUser>[];
    } else {
      return result.hits //
          .map((AlgoliaObjectSnapshot object) => AppUser.fromJson(object.data))
          .toList();
    }
  }

  Future<void> startFollowing({@required String uid, @required String followingUid}) async {
    final List<String> uids = <String>[followingUid];
    await _firestore //
        .document('users/$uid')
        .updateData(<String, dynamic>{'following': FieldValue.arrayUnion(uids)});
  }

  Future<void> stopFollowing({@required String uid, @required String followingUid}) async {
    final List<String> uids = <String>[followingUid];
    await _firestore //
        .document('users/$uid')
        .updateData(<String, dynamic>{'following': FieldValue.arrayRemove(uids)});
  }

  Future<String> _checkUsername(String username) async {
    final HttpsCallable checkUsername = _cloudFunctions.getHttpsCallable(functionName: 'checkUsername');
    final HttpsCallableResult result = await checkUsername(<String, String>{'username': username});
    return result.data;
  }
}
