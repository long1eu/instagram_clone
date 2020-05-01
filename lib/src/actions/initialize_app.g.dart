// GENERATED CODE - DO NOT MODIFY BY HAND

part of initialize_app;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InitializeApp extends InitializeApp {
  factory _$InitializeApp([void Function(InitializeAppBuilder) updates]) =>
      (new InitializeAppBuilder()..update(updates)).build();

  _$InitializeApp._() : super._();

  @override
  InitializeApp rebuild(void Function(InitializeAppBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InitializeAppBuilder toBuilder() => new InitializeAppBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InitializeApp;
  }

  @override
  int get hashCode {
    return 194075209;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('InitializeApp').toString();
  }
}

class InitializeAppBuilder
    implements Builder<InitializeApp, InitializeAppBuilder> {
  _$InitializeApp _$v;

  InitializeAppBuilder();

  @override
  void replace(InitializeApp other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InitializeApp;
  }

  @override
  void update(void Function(InitializeAppBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InitializeApp build() {
    final _$result = _$v ?? new _$InitializeApp._();
    replace(_$result);
    return _$result;
  }
}

class _$InitializeAppSuccessful extends InitializeAppSuccessful {
  @override
  final AppUser user;

  factory _$InitializeAppSuccessful(
          [void Function(InitializeAppSuccessfulBuilder) updates]) =>
      (new InitializeAppSuccessfulBuilder()..update(updates)).build();

  _$InitializeAppSuccessful._({this.user}) : super._();

  @override
  InitializeAppSuccessful rebuild(
          void Function(InitializeAppSuccessfulBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InitializeAppSuccessfulBuilder toBuilder() =>
      new InitializeAppSuccessfulBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InitializeAppSuccessful && user == other.user;
  }

  @override
  int get hashCode {
    return $jf($jc(0, user.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InitializeAppSuccessful')
          ..add('user', user))
        .toString();
  }
}

class InitializeAppSuccessfulBuilder
    implements
        Builder<InitializeAppSuccessful, InitializeAppSuccessfulBuilder> {
  _$InitializeAppSuccessful _$v;

  AppUserBuilder _user;
  AppUserBuilder get user => _$this._user ??= new AppUserBuilder();
  set user(AppUserBuilder user) => _$this._user = user;

  InitializeAppSuccessfulBuilder();

  InitializeAppSuccessfulBuilder get _$this {
    if (_$v != null) {
      _user = _$v.user?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InitializeAppSuccessful other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InitializeAppSuccessful;
  }

  @override
  void update(void Function(InitializeAppSuccessfulBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InitializeAppSuccessful build() {
    _$InitializeAppSuccessful _$result;
    try {
      _$result = _$v ?? new _$InitializeAppSuccessful._(user: _user?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'InitializeAppSuccessful', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$InitializeAppError extends InitializeAppError {
  @override
  final Object error;

  factory _$InitializeAppError(
          [void Function(InitializeAppErrorBuilder) updates]) =>
      (new InitializeAppErrorBuilder()..update(updates)).build();

  _$InitializeAppError._({this.error}) : super._() {
    if (error == null) {
      throw new BuiltValueNullFieldError('InitializeAppError', 'error');
    }
  }

  @override
  InitializeAppError rebuild(
          void Function(InitializeAppErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InitializeAppErrorBuilder toBuilder() =>
      new InitializeAppErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InitializeAppError && error == other.error;
  }

  @override
  int get hashCode {
    return $jf($jc(0, error.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InitializeAppError')
          ..add('error', error))
        .toString();
  }
}

class InitializeAppErrorBuilder
    implements Builder<InitializeAppError, InitializeAppErrorBuilder> {
  _$InitializeAppError _$v;

  Object _error;
  Object get error => _$this._error;
  set error(Object error) => _$this._error = error;

  InitializeAppErrorBuilder();

  InitializeAppErrorBuilder get _$this {
    if (_$v != null) {
      _error = _$v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InitializeAppError other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InitializeAppError;
  }

  @override
  void update(void Function(InitializeAppErrorBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InitializeAppError build() {
    final _$result = _$v ?? new _$InitializeAppError._(error: error);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
