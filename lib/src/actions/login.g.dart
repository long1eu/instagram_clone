// GENERATED CODE - DO NOT MODIFY BY HAND

part of login;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Login extends Login {
  @override
  final String email;
  @override
  final String password;

  factory _$Login([void Function(LoginBuilder) updates]) =>
      (new LoginBuilder()..update(updates)).build();

  _$Login._({this.email, this.password}) : super._() {
    if (email == null) {
      throw new BuiltValueNullFieldError('Login', 'email');
    }
    if (password == null) {
      throw new BuiltValueNullFieldError('Login', 'password');
    }
  }

  @override
  Login rebuild(void Function(LoginBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoginBuilder toBuilder() => new LoginBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Login && email == other.email && password == other.password;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, email.hashCode), password.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Login')
          ..add('email', email)
          ..add('password', password))
        .toString();
  }
}

class LoginBuilder implements Builder<Login, LoginBuilder> {
  _$Login _$v;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _password;
  String get password => _$this._password;
  set password(String password) => _$this._password = password;

  LoginBuilder();

  LoginBuilder get _$this {
    if (_$v != null) {
      _email = _$v.email;
      _password = _$v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Login other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Login;
  }

  @override
  void update(void Function(LoginBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Login build() {
    final _$result = _$v ?? new _$Login._(email: email, password: password);
    replace(_$result);
    return _$result;
  }
}

class _$LoginSuccessful extends LoginSuccessful {
  @override
  final AppUser user;

  factory _$LoginSuccessful([void Function(LoginSuccessfulBuilder) updates]) =>
      (new LoginSuccessfulBuilder()..update(updates)).build();

  _$LoginSuccessful._({this.user}) : super._() {
    if (user == null) {
      throw new BuiltValueNullFieldError('LoginSuccessful', 'user');
    }
  }

  @override
  LoginSuccessful rebuild(void Function(LoginSuccessfulBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoginSuccessfulBuilder toBuilder() =>
      new LoginSuccessfulBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoginSuccessful && user == other.user;
  }

  @override
  int get hashCode {
    return $jf($jc(0, user.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LoginSuccessful')..add('user', user))
        .toString();
  }
}

class LoginSuccessfulBuilder
    implements Builder<LoginSuccessful, LoginSuccessfulBuilder> {
  _$LoginSuccessful _$v;

  AppUserBuilder _user;
  AppUserBuilder get user => _$this._user ??= new AppUserBuilder();
  set user(AppUserBuilder user) => _$this._user = user;

  LoginSuccessfulBuilder();

  LoginSuccessfulBuilder get _$this {
    if (_$v != null) {
      _user = _$v.user?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoginSuccessful other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$LoginSuccessful;
  }

  @override
  void update(void Function(LoginSuccessfulBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LoginSuccessful build() {
    _$LoginSuccessful _$result;
    try {
      _$result = _$v ?? new _$LoginSuccessful._(user: user.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'user';
        user.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'LoginSuccessful', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$LoginError extends LoginError {
  @override
  final Object error;

  factory _$LoginError([void Function(LoginErrorBuilder) updates]) =>
      (new LoginErrorBuilder()..update(updates)).build();

  _$LoginError._({this.error}) : super._() {
    if (error == null) {
      throw new BuiltValueNullFieldError('LoginError', 'error');
    }
  }

  @override
  LoginError rebuild(void Function(LoginErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoginErrorBuilder toBuilder() => new LoginErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoginError && error == other.error;
  }

  @override
  int get hashCode {
    return $jf($jc(0, error.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LoginError')..add('error', error))
        .toString();
  }
}

class LoginErrorBuilder implements Builder<LoginError, LoginErrorBuilder> {
  _$LoginError _$v;

  Object _error;
  Object get error => _$this._error;
  set error(Object error) => _$this._error = error;

  LoginErrorBuilder();

  LoginErrorBuilder get _$this {
    if (_$v != null) {
      _error = _$v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoginError other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$LoginError;
  }

  @override
  void update(void Function(LoginErrorBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LoginError build() {
    final _$result = _$v ?? new _$LoginError._(error: error);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
