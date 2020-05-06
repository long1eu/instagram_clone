// GENERATED CODE - DO NOT MODIFY BY HAND

part of reset_password;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ResetPassword extends ResetPassword {
  @override
  final String email;
  @override
  final ActionResult result;

  factory _$ResetPassword([void Function(ResetPasswordBuilder) updates]) =>
      (new ResetPasswordBuilder()..update(updates)).build();

  _$ResetPassword._({this.email, this.result}) : super._() {
    if (email == null) {
      throw new BuiltValueNullFieldError('ResetPassword', 'email');
    }
    if (result == null) {
      throw new BuiltValueNullFieldError('ResetPassword', 'result');
    }
  }

  @override
  ResetPassword rebuild(void Function(ResetPasswordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResetPasswordBuilder toBuilder() => new ResetPasswordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is ResetPassword &&
        email == other.email &&
        result == _$dynamicOther.result;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, email.hashCode), result.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ResetPassword')
          ..add('email', email)
          ..add('result', result))
        .toString();
  }
}

class ResetPasswordBuilder
    implements Builder<ResetPassword, ResetPasswordBuilder> {
  _$ResetPassword _$v;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  ActionResult _result;
  ActionResult get result => _$this._result;
  set result(ActionResult result) => _$this._result = result;

  ResetPasswordBuilder();

  ResetPasswordBuilder get _$this {
    if (_$v != null) {
      _email = _$v.email;
      _result = _$v.result;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ResetPassword other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ResetPassword;
  }

  @override
  void update(void Function(ResetPasswordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ResetPassword build() {
    final _$result = _$v ?? new _$ResetPassword._(email: email, result: result);
    replace(_$result);
    return _$result;
  }
}

class _$ResetPasswordSuccessful extends ResetPasswordSuccessful {
  factory _$ResetPasswordSuccessful(
          [void Function(ResetPasswordSuccessfulBuilder) updates]) =>
      (new ResetPasswordSuccessfulBuilder()..update(updates)).build();

  _$ResetPasswordSuccessful._() : super._();

  @override
  ResetPasswordSuccessful rebuild(
          void Function(ResetPasswordSuccessfulBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResetPasswordSuccessfulBuilder toBuilder() =>
      new ResetPasswordSuccessfulBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResetPasswordSuccessful;
  }

  @override
  int get hashCode {
    return 618457533;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('ResetPasswordSuccessful').toString();
  }
}

class ResetPasswordSuccessfulBuilder
    implements
        Builder<ResetPasswordSuccessful, ResetPasswordSuccessfulBuilder> {
  _$ResetPasswordSuccessful _$v;

  ResetPasswordSuccessfulBuilder();

  @override
  void replace(ResetPasswordSuccessful other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ResetPasswordSuccessful;
  }

  @override
  void update(void Function(ResetPasswordSuccessfulBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ResetPasswordSuccessful build() {
    final _$result = _$v ?? new _$ResetPasswordSuccessful._();
    replace(_$result);
    return _$result;
  }
}

class _$ResetPasswordError extends ResetPasswordError {
  @override
  final Object error;

  factory _$ResetPasswordError(
          [void Function(ResetPasswordErrorBuilder) updates]) =>
      (new ResetPasswordErrorBuilder()..update(updates)).build();

  _$ResetPasswordError._({this.error}) : super._() {
    if (error == null) {
      throw new BuiltValueNullFieldError('ResetPasswordError', 'error');
    }
  }

  @override
  ResetPasswordError rebuild(
          void Function(ResetPasswordErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResetPasswordErrorBuilder toBuilder() =>
      new ResetPasswordErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResetPasswordError && error == other.error;
  }

  @override
  int get hashCode {
    return $jf($jc(0, error.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ResetPasswordError')
          ..add('error', error))
        .toString();
  }
}

class ResetPasswordErrorBuilder
    implements Builder<ResetPasswordError, ResetPasswordErrorBuilder> {
  _$ResetPasswordError _$v;

  Object _error;
  Object get error => _$this._error;
  set error(Object error) => _$this._error = error;

  ResetPasswordErrorBuilder();

  ResetPasswordErrorBuilder get _$this {
    if (_$v != null) {
      _error = _$v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ResetPasswordError other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ResetPasswordError;
  }

  @override
  void update(void Function(ResetPasswordErrorBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ResetPasswordError build() {
    final _$result = _$v ?? new _$ResetPasswordError._(error: error);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
