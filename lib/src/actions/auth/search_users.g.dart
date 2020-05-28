// GENERATED CODE - DO NOT MODIFY BY HAND

part of search_users;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SearchUsers extends SearchUsers {
  @override
  final String query;

  factory _$SearchUsers([void Function(SearchUsersBuilder) updates]) =>
      (new SearchUsersBuilder()..update(updates)).build();

  _$SearchUsers._({this.query}) : super._() {
    if (query == null) {
      throw new BuiltValueNullFieldError('SearchUsers', 'query');
    }
  }

  @override
  SearchUsers rebuild(void Function(SearchUsersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchUsersBuilder toBuilder() => new SearchUsersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SearchUsers && query == other.query;
  }

  @override
  int get hashCode {
    return $jf($jc(0, query.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SearchUsers')..add('query', query))
        .toString();
  }
}

class SearchUsersBuilder implements Builder<SearchUsers, SearchUsersBuilder> {
  _$SearchUsers _$v;

  String _query;
  String get query => _$this._query;
  set query(String query) => _$this._query = query;

  SearchUsersBuilder();

  SearchUsersBuilder get _$this {
    if (_$v != null) {
      _query = _$v.query;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SearchUsers other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SearchUsers;
  }

  @override
  void update(void Function(SearchUsersBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SearchUsers build() {
    final _$result = _$v ?? new _$SearchUsers._(query: query);
    replace(_$result);
    return _$result;
  }
}

class _$SearchUsersSuccessful extends SearchUsersSuccessful {
  @override
  final BuiltList<AppUser> users;

  factory _$SearchUsersSuccessful(
          [void Function(SearchUsersSuccessfulBuilder) updates]) =>
      (new SearchUsersSuccessfulBuilder()..update(updates)).build();

  _$SearchUsersSuccessful._({this.users}) : super._() {
    if (users == null) {
      throw new BuiltValueNullFieldError('SearchUsersSuccessful', 'users');
    }
  }

  @override
  SearchUsersSuccessful rebuild(
          void Function(SearchUsersSuccessfulBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchUsersSuccessfulBuilder toBuilder() =>
      new SearchUsersSuccessfulBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SearchUsersSuccessful && users == other.users;
  }

  @override
  int get hashCode {
    return $jf($jc(0, users.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SearchUsersSuccessful')
          ..add('users', users))
        .toString();
  }
}

class SearchUsersSuccessfulBuilder
    implements Builder<SearchUsersSuccessful, SearchUsersSuccessfulBuilder> {
  _$SearchUsersSuccessful _$v;

  ListBuilder<AppUser> _users;
  ListBuilder<AppUser> get users =>
      _$this._users ??= new ListBuilder<AppUser>();
  set users(ListBuilder<AppUser> users) => _$this._users = users;

  SearchUsersSuccessfulBuilder();

  SearchUsersSuccessfulBuilder get _$this {
    if (_$v != null) {
      _users = _$v.users?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SearchUsersSuccessful other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SearchUsersSuccessful;
  }

  @override
  void update(void Function(SearchUsersSuccessfulBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SearchUsersSuccessful build() {
    _$SearchUsersSuccessful _$result;
    try {
      _$result = _$v ?? new _$SearchUsersSuccessful._(users: users.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'users';
        users.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SearchUsersSuccessful', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$SearchUsersError extends SearchUsersError {
  @override
  final Object error;

  factory _$SearchUsersError(
          [void Function(SearchUsersErrorBuilder) updates]) =>
      (new SearchUsersErrorBuilder()..update(updates)).build();

  _$SearchUsersError._({this.error}) : super._() {
    if (error == null) {
      throw new BuiltValueNullFieldError('SearchUsersError', 'error');
    }
  }

  @override
  SearchUsersError rebuild(void Function(SearchUsersErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchUsersErrorBuilder toBuilder() =>
      new SearchUsersErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SearchUsersError && error == other.error;
  }

  @override
  int get hashCode {
    return $jf($jc(0, error.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SearchUsersError')
          ..add('error', error))
        .toString();
  }
}

class SearchUsersErrorBuilder
    implements Builder<SearchUsersError, SearchUsersErrorBuilder> {
  _$SearchUsersError _$v;

  Object _error;
  Object get error => _$this._error;
  set error(Object error) => _$this._error = error;

  SearchUsersErrorBuilder();

  SearchUsersErrorBuilder get _$this {
    if (_$v != null) {
      _error = _$v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SearchUsersError other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SearchUsersError;
  }

  @override
  void update(void Function(SearchUsersErrorBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SearchUsersError build() {
    final _$result = _$v ?? new _$SearchUsersError._(error: error);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
