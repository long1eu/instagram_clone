// File created by
// Lung Razvan <long1eu>
// on 10/04/2020

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:instagram_clone/src/models/app_user.dart';
import 'package:meta/meta.dart';

class AuthApi {
  const AuthApi({@required this.auth, @required this.firestore});

  final FirebaseAuth auth;
  final Firestore firestore;

  /// Returns the current login in user or null if there is no user logged in.
  Future<AppUser> getUser() async {
    final FirebaseUser firebaseUser = await auth.currentUser();
    return _buildUser(firebaseUser);
  }

  /// Tries to log the user in using his email and password
  Future<AppUser> login(String email, String password) async {
    final AuthResult result = await auth.signInWithEmailAndPassword(email: email, password: password);
    return _buildUser(result.user);
  }

  /// Logs the user out
  Future<void> logOut() async {
    await auth.signOut();
  }

  /// Send the reset password link to the [email]
  Future<void> sendForgotPasswordEmail(String email) async {
    await auth.sendPasswordResetEmail(email: email);
  }

  /// Create new user with email and password
  Future<AppUser> signUp(String email, String password) async {
    final AuthResult result = await auth.createUserWithEmailAndPassword(email: email, password: password);
    return _buildUser(result.user);
  }

  Future<AppUser> _buildUser(FirebaseUser firebaseUser) async {
    if (firebaseUser == null) {
      return null;
    }

    final DocumentSnapshot snapshot = await firestore.document('users/${firebaseUser.uid}').get();
    if (snapshot.exists) {
      return AppUser.fromJson(snapshot.data);
    }

    final AppUser user = AppUser(
      uid: firebaseUser.uid,
      displayName: firebaseUser.displayName,
      username: null,
      email: firebaseUser.email,
      birthDate: null,
      photoUrl: firebaseUser.photoUrl,
    );

    await firestore.document('users/${user.uid}').setData(user.json);
    return user;
  }
}
