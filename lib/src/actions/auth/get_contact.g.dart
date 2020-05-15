// GENERATED CODE - DO NOT MODIFY BY HAND

part of get_contact;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetContact extends GetContact {
  @override
  final String uid;

  factory _$GetContact([void Function(GetContactBuilder) updates]) =>
      (new GetContactBuilder()..update(updates)).build();

  _$GetContact._({this.uid}) : super._() {
    if (uid == null) {
      throw new BuiltValueNullFieldError('GetContact', 'uid');
    }
  }

  @override
  GetContact rebuild(void Function(GetContactBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetContactBuilder toBuilder() => new GetContactBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetContact && uid == other.uid;
  }

  @override
  int get hashCode {
    return $jf($jc(0, uid.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GetContact')..add('uid', uid))
        .toString();
  }
}

class GetContactBuilder implements Builder<GetContact, GetContactBuilder> {
  _$GetContact _$v;

  String _uid;
  String get uid => _$this._uid;
  set uid(String uid) => _$this._uid = uid;

  GetContactBuilder();

  GetContactBuilder get _$this {
    if (_$v != null) {
      _uid = _$v.uid;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetContact other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GetContact;
  }

  @override
  void update(void Function(GetContactBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetContact build() {
    final _$result = _$v ?? new _$GetContact._(uid: uid);
    replace(_$result);
    return _$result;
  }
}

class _$GetContactSuccessful extends GetContactSuccessful {
  @override
  final AppUser user;

  factory _$GetContactSuccessful(
          [void Function(GetContactSuccessfulBuilder) updates]) =>
      (new GetContactSuccessfulBuilder()..update(updates)).build();

  _$GetContactSuccessful._({this.user}) : super._() {
    if (user == null) {
      throw new BuiltValueNullFieldError('GetContactSuccessful', 'user');
    }
  }

  @override
  GetContactSuccessful rebuild(
          void Function(GetContactSuccessfulBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetContactSuccessfulBuilder toBuilder() =>
      new GetContactSuccessfulBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetContactSuccessful && user == other.user;
  }

  @override
  int get hashCode {
    return $jf($jc(0, user.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GetContactSuccessful')
          ..add('user', user))
        .toString();
  }
}

class GetContactSuccessfulBuilder
    implements Builder<GetContactSuccessful, GetContactSuccessfulBuilder> {
  _$GetContactSuccessful _$v;

  AppUserBuilder _user;
  AppUserBuilder get user => _$this._user ??= new AppUserBuilder();
  set user(AppUserBuilder user) => _$this._user = user;

  GetContactSuccessfulBuilder();

  GetContactSuccessfulBuilder get _$this {
    if (_$v != null) {
      _user = _$v.user?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetContactSuccessful other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GetContactSuccessful;
  }

  @override
  void update(void Function(GetContactSuccessfulBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetContactSuccessful build() {
    _$GetContactSuccessful _$result;
    try {
      _$result = _$v ?? new _$GetContactSuccessful._(user: user.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'user';
        user.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GetContactSuccessful', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GetContactError extends GetContactError {
  @override
  final Object error;

  factory _$GetContactError([void Function(GetContactErrorBuilder) updates]) =>
      (new GetContactErrorBuilder()..update(updates)).build();

  _$GetContactError._({this.error}) : super._() {
    if (error == null) {
      throw new BuiltValueNullFieldError('GetContactError', 'error');
    }
  }

  @override
  GetContactError rebuild(void Function(GetContactErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetContactErrorBuilder toBuilder() =>
      new GetContactErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetContactError && error == other.error;
  }

  @override
  int get hashCode {
    return $jf($jc(0, error.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GetContactError')..add('error', error))
        .toString();
  }
}

class GetContactErrorBuilder
    implements Builder<GetContactError, GetContactErrorBuilder> {
  _$GetContactError _$v;

  Object _error;
  Object get error => _$this._error;
  set error(Object error) => _$this._error = error;

  GetContactErrorBuilder();

  GetContactErrorBuilder get _$this {
    if (_$v != null) {
      _error = _$v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetContactError other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GetContactError;
  }

  @override
  void update(void Function(GetContactErrorBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetContactError build() {
    final _$result = _$v ?? new _$GetContactError._(error: error);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
