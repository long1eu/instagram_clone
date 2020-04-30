// GENERATED CODE - DO NOT MODIFY BY HAND

part of reserve_username;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReserveUsername extends ReserveUsername {
  factory _$ReserveUsername([void Function(ReserveUsernameBuilder) updates]) =>
      (new ReserveUsernameBuilder()..update(updates)).build();

  _$ReserveUsername._() : super._();

  @override
  ReserveUsername rebuild(void Function(ReserveUsernameBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReserveUsernameBuilder toBuilder() =>
      new ReserveUsernameBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReserveUsername;
  }

  @override
  int get hashCode {
    return 38332406;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('ReserveUsername').toString();
  }
}

class ReserveUsernameBuilder
    implements Builder<ReserveUsername, ReserveUsernameBuilder> {
  _$ReserveUsername _$v;

  ReserveUsernameBuilder();

  @override
  void replace(ReserveUsername other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ReserveUsername;
  }

  @override
  void update(void Function(ReserveUsernameBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ReserveUsername build() {
    final _$result = _$v ?? new _$ReserveUsername._();
    replace(_$result);
    return _$result;
  }
}

class _$ReserveUsernameSuccessful extends ReserveUsernameSuccessful {
  @override
  final String username;

  factory _$ReserveUsernameSuccessful(
          [void Function(ReserveUsernameSuccessfulBuilder) updates]) =>
      (new ReserveUsernameSuccessfulBuilder()..update(updates)).build();

  _$ReserveUsernameSuccessful._({this.username}) : super._() {
    if (username == null) {
      throw new BuiltValueNullFieldError(
          'ReserveUsernameSuccessful', 'username');
    }
  }

  @override
  ReserveUsernameSuccessful rebuild(
          void Function(ReserveUsernameSuccessfulBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReserveUsernameSuccessfulBuilder toBuilder() =>
      new ReserveUsernameSuccessfulBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReserveUsernameSuccessful && username == other.username;
  }

  @override
  int get hashCode {
    return $jf($jc(0, username.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ReserveUsernameSuccessful')
          ..add('username', username))
        .toString();
  }
}

class ReserveUsernameSuccessfulBuilder
    implements
        Builder<ReserveUsernameSuccessful, ReserveUsernameSuccessfulBuilder> {
  _$ReserveUsernameSuccessful _$v;

  String _username;
  String get username => _$this._username;
  set username(String username) => _$this._username = username;

  ReserveUsernameSuccessfulBuilder();

  ReserveUsernameSuccessfulBuilder get _$this {
    if (_$v != null) {
      _username = _$v.username;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReserveUsernameSuccessful other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ReserveUsernameSuccessful;
  }

  @override
  void update(void Function(ReserveUsernameSuccessfulBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ReserveUsernameSuccessful build() {
    final _$result =
        _$v ?? new _$ReserveUsernameSuccessful._(username: username);
    replace(_$result);
    return _$result;
  }
}

class _$ReserveUsernameError extends ReserveUsernameError {
  @override
  final Object error;

  factory _$ReserveUsernameError(
          [void Function(ReserveUsernameErrorBuilder) updates]) =>
      (new ReserveUsernameErrorBuilder()..update(updates)).build();

  _$ReserveUsernameError._({this.error}) : super._() {
    if (error == null) {
      throw new BuiltValueNullFieldError('ReserveUsernameError', 'error');
    }
  }

  @override
  ReserveUsernameError rebuild(
          void Function(ReserveUsernameErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReserveUsernameErrorBuilder toBuilder() =>
      new ReserveUsernameErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReserveUsernameError && error == other.error;
  }

  @override
  int get hashCode {
    return $jf($jc(0, error.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ReserveUsernameError')
          ..add('error', error))
        .toString();
  }
}

class ReserveUsernameErrorBuilder
    implements Builder<ReserveUsernameError, ReserveUsernameErrorBuilder> {
  _$ReserveUsernameError _$v;

  Object _error;
  Object get error => _$this._error;
  set error(Object error) => _$this._error = error;

  ReserveUsernameErrorBuilder();

  ReserveUsernameErrorBuilder get _$this {
    if (_$v != null) {
      _error = _$v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReserveUsernameError other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ReserveUsernameError;
  }

  @override
  void update(void Function(ReserveUsernameErrorBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ReserveUsernameError build() {
    final _$result = _$v ?? new _$ReserveUsernameError._(error: error);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
