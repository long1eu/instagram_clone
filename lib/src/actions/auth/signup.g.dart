// GENERATED CODE - DO NOT MODIFY BY HAND

part of signup;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SignUp extends SignUp {
  @override
  final ActionResult result;

  factory _$SignUp([void Function(SignUpBuilder) updates]) =>
      (new SignUpBuilder()..update(updates)).build();

  _$SignUp._({this.result}) : super._() {
    if (result == null) {
      throw new BuiltValueNullFieldError('SignUp', 'result');
    }
  }

  @override
  SignUp rebuild(void Function(SignUpBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SignUpBuilder toBuilder() => new SignUpBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is SignUp && result == _$dynamicOther.result;
  }

  @override
  int get hashCode {
    return $jf($jc(0, result.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SignUp')..add('result', result))
        .toString();
  }
}

class SignUpBuilder implements Builder<SignUp, SignUpBuilder> {
  _$SignUp _$v;

  ActionResult _result;
  ActionResult get result => _$this._result;
  set result(ActionResult result) => _$this._result = result;

  SignUpBuilder();

  SignUpBuilder get _$this {
    if (_$v != null) {
      _result = _$v.result;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SignUp other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SignUp;
  }

  @override
  void update(void Function(SignUpBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SignUp build() {
    final _$result = _$v ?? new _$SignUp._(result: result);
    replace(_$result);
    return _$result;
  }
}

class _$SignUpSuccessful extends SignUpSuccessful {
  @override
  final AppUser user;

  factory _$SignUpSuccessful(
          [void Function(SignUpSuccessfulBuilder) updates]) =>
      (new SignUpSuccessfulBuilder()..update(updates)).build();

  _$SignUpSuccessful._({this.user}) : super._() {
    if (user == null) {
      throw new BuiltValueNullFieldError('SignUpSuccessful', 'user');
    }
  }

  @override
  SignUpSuccessful rebuild(void Function(SignUpSuccessfulBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SignUpSuccessfulBuilder toBuilder() =>
      new SignUpSuccessfulBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SignUpSuccessful && user == other.user;
  }

  @override
  int get hashCode {
    return $jf($jc(0, user.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SignUpSuccessful')..add('user', user))
        .toString();
  }
}

class SignUpSuccessfulBuilder
    implements Builder<SignUpSuccessful, SignUpSuccessfulBuilder> {
  _$SignUpSuccessful _$v;

  AppUserBuilder _user;
  AppUserBuilder get user => _$this._user ??= new AppUserBuilder();
  set user(AppUserBuilder user) => _$this._user = user;

  SignUpSuccessfulBuilder();

  SignUpSuccessfulBuilder get _$this {
    if (_$v != null) {
      _user = _$v.user?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SignUpSuccessful other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SignUpSuccessful;
  }

  @override
  void update(void Function(SignUpSuccessfulBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SignUpSuccessful build() {
    _$SignUpSuccessful _$result;
    try {
      _$result = _$v ?? new _$SignUpSuccessful._(user: user.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'user';
        user.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SignUpSuccessful', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$SignUpError extends SignUpError {
  @override
  final Object error;

  factory _$SignUpError([void Function(SignUpErrorBuilder) updates]) =>
      (new SignUpErrorBuilder()..update(updates)).build();

  _$SignUpError._({this.error}) : super._() {
    if (error == null) {
      throw new BuiltValueNullFieldError('SignUpError', 'error');
    }
  }

  @override
  SignUpError rebuild(void Function(SignUpErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SignUpErrorBuilder toBuilder() => new SignUpErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SignUpError && error == other.error;
  }

  @override
  int get hashCode {
    return $jf($jc(0, error.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SignUpError')..add('error', error))
        .toString();
  }
}

class SignUpErrorBuilder implements Builder<SignUpError, SignUpErrorBuilder> {
  _$SignUpError _$v;

  Object _error;
  Object get error => _$this._error;
  set error(Object error) => _$this._error = error;

  SignUpErrorBuilder();

  SignUpErrorBuilder get _$this {
    if (_$v != null) {
      _error = _$v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SignUpError other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SignUpError;
  }

  @override
  void update(void Function(SignUpErrorBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SignUpError build() {
    final _$result = _$v ?? new _$SignUpError._(error: error);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
