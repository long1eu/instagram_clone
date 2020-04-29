// File created by
// Lung Razvan <long1eu>
// on 15/04/2020

import 'package:meta/meta.dart';

class AppUser {
  AppUser({
    @required this.uid,
    @required this.displayName,
    @required this.username,
    @required this.email,
    @required this.phone,
    @required this.birthDate,
    @required this.photoUrl,
  });

  factory AppUser.fromJson(Map<String, dynamic> json) {
    return AppUser(
      uid: json['uid'],
      displayName: json['displayName'],
      username: json['username'],
      email: json['email'],
      phone: json['phone'],
      birthDate: json['birthDate'] != null ? DateTime.fromMillisecondsSinceEpoch(json['birthDate']) : null,
      photoUrl: json['photoUrl'],
    );
  }

  final String uid;
  final String displayName;
  final String username;
  final String email;
  final String phone;
  final DateTime birthDate;
  final String photoUrl;

  Map<String, dynamic> get json {
    return <String, dynamic>{
      'uid': uid,
      'displayName': displayName,
      'username': username,
      'email': email,
      'birthDate': birthDate?.millisecondsSinceEpoch,
      'photoUrl': photoUrl,
    };
  }

  AppUser copyWith({
    String uid,
    String displayName,
    String username,
    String email,
    String phone,
    DateTime birthDate,
    String photoUrl,
  }) {
    return AppUser(
      uid: uid ?? this.uid,
      displayName: displayName ?? this.displayName,
      username: username ?? this.username,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      birthDate: birthDate ?? this.birthDate,
      photoUrl: photoUrl ?? this.photoUrl,
    );
  }

  @override
  String toString() =>
      'AppUser{uid: $uid, displayName: $displayName, username: $username, email: $email, phone: $phone, birthDate: $birthDate, photoUrl: $photoUrl}';
}
