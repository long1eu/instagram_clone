// File created by
// Lung Razvan <long1eu>
// on 28/05/2020

library search_users;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:instagram_clone/src/actions/actions.dart';
import 'package:instagram_clone/src/models/auth/app_user.dart';

part 'search_users.g.dart';

abstract class SearchUsers //
    implements
        Built<SearchUsers, SearchUsersBuilder>,
        AppAction //
{
  factory SearchUsers(String query) {
    return _$SearchUsers((SearchUsersBuilder b) => b.query = query);
  }

  SearchUsers._();

  String get query;
}

abstract class SearchUsersSuccessful //
    implements
        Built<SearchUsersSuccessful, SearchUsersSuccessfulBuilder>,
        AppAction //
{
  factory SearchUsersSuccessful(List<AppUser> users) {
    return _$SearchUsersSuccessful((SearchUsersSuccessfulBuilder b) {
      b.users = ListBuilder<AppUser>(users);
    });
  }

  SearchUsersSuccessful._();

  BuiltList<AppUser> get users;
}

abstract class SearchUsersError //
    implements
        Built<SearchUsersError, SearchUsersErrorBuilder>,
        ErrorAction //
{
  factory SearchUsersError(Object error) {
    return _$SearchUsersError((SearchUsersErrorBuilder b) => b.error = error);
  }

  SearchUsersError._();

  @override
  Object get error;
}
