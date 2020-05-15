// File created by
// Lung Razvan <long1eu>
// on 15/05/2020

library get_contact;

import 'package:built_value/built_value.dart';
import 'package:instagram_clone/src/actions/actions.dart';
import 'package:instagram_clone/src/models/auth/app_user.dart';

part 'get_contact.g.dart';

abstract class GetContact //
    implements
        Built<GetContact, GetContactBuilder>,
        AppAction //
{
  factory GetContact(String uid) {
    return _$GetContact((GetContactBuilder b) => b.uid = uid);
  }

  GetContact._();

  String get uid;
}

abstract class GetContactSuccessful //
    implements
        Built<GetContactSuccessful, GetContactSuccessfulBuilder>,
        AppAction //
{
  factory GetContactSuccessful(AppUser user) {
    return _$GetContactSuccessful((GetContactSuccessfulBuilder b) => b.user = user.toBuilder());
  }

  GetContactSuccessful._();

  AppUser get user;
}

abstract class GetContactError //
    implements
        Built<GetContactError, GetContactErrorBuilder>,
        ErrorAction //
{
  factory GetContactError(Object error) {
    return _$GetContactError((GetContactErrorBuilder b) => b.error = error);
  }

  GetContactError._();

  @override
  Object get error;
}
