// GENERATED CODE - DO NOT MODIFY BY HAND

part of logout;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Logout extends Logout {
  factory _$Logout([void Function(LogoutBuilder) updates]) =>
      (new LogoutBuilder()..update(updates)).build();

  _$Logout._() : super._();

  @override
  Logout rebuild(void Function(LogoutBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LogoutBuilder toBuilder() => new LogoutBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Logout;
  }

  @override
  int get hashCode {
    return 676553867;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('Logout').toString();
  }
}

class LogoutBuilder implements Builder<Logout, LogoutBuilder> {
  _$Logout _$v;

  LogoutBuilder();

  @override
  void replace(Logout other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Logout;
  }

  @override
  void update(void Function(LogoutBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Logout build() {
    final _$result = _$v ?? new _$Logout._();
    replace(_$result);
    return _$result;
  }
}

class _$LogoutSuccessful extends LogoutSuccessful {
  factory _$LogoutSuccessful(
          [void Function(LogoutSuccessfulBuilder) updates]) =>
      (new LogoutSuccessfulBuilder()..update(updates)).build();

  _$LogoutSuccessful._() : super._();

  @override
  LogoutSuccessful rebuild(void Function(LogoutSuccessfulBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LogoutSuccessfulBuilder toBuilder() =>
      new LogoutSuccessfulBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LogoutSuccessful;
  }

  @override
  int get hashCode {
    return 907657054;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('LogoutSuccessful').toString();
  }
}

class LogoutSuccessfulBuilder
    implements Builder<LogoutSuccessful, LogoutSuccessfulBuilder> {
  _$LogoutSuccessful _$v;

  LogoutSuccessfulBuilder();

  @override
  void replace(LogoutSuccessful other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$LogoutSuccessful;
  }

  @override
  void update(void Function(LogoutSuccessfulBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LogoutSuccessful build() {
    final _$result = _$v ?? new _$LogoutSuccessful._();
    replace(_$result);
    return _$result;
  }
}

class _$LogoutError extends LogoutError {
  @override
  final Object error;

  factory _$LogoutError([void Function(LogoutErrorBuilder) updates]) =>
      (new LogoutErrorBuilder()..update(updates)).build();

  _$LogoutError._({this.error}) : super._() {
    if (error == null) {
      throw new BuiltValueNullFieldError('LogoutError', 'error');
    }
  }

  @override
  LogoutError rebuild(void Function(LogoutErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LogoutErrorBuilder toBuilder() => new LogoutErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LogoutError && error == other.error;
  }

  @override
  int get hashCode {
    return $jf($jc(0, error.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LogoutError')..add('error', error))
        .toString();
  }
}

class LogoutErrorBuilder implements Builder<LogoutError, LogoutErrorBuilder> {
  _$LogoutError _$v;

  Object _error;
  Object get error => _$this._error;
  set error(Object error) => _$this._error = error;

  LogoutErrorBuilder();

  LogoutErrorBuilder get _$this {
    if (_$v != null) {
      _error = _$v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LogoutError other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$LogoutError;
  }

  @override
  void update(void Function(LogoutErrorBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LogoutError build() {
    final _$result = _$v ?? new _$LogoutError._(error: error);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
