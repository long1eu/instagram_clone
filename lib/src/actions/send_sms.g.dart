// GENERATED CODE - DO NOT MODIFY BY HAND

part of send_sms;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SendSms extends SendSms {
  @override
  final ActionResult result;

  factory _$SendSms([void Function(SendSmsBuilder) updates]) =>
      (new SendSmsBuilder()..update(updates)).build();

  _$SendSms._({this.result}) : super._() {
    if (result == null) {
      throw new BuiltValueNullFieldError('SendSms', 'result');
    }
  }

  @override
  SendSms rebuild(void Function(SendSmsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SendSmsBuilder toBuilder() => new SendSmsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is SendSms && result == _$dynamicOther.result;
  }

  @override
  int get hashCode {
    return $jf($jc(0, result.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SendSms')..add('result', result))
        .toString();
  }
}

class SendSmsBuilder implements Builder<SendSms, SendSmsBuilder> {
  _$SendSms _$v;

  ActionResult _result;
  ActionResult get result => _$this._result;
  set result(ActionResult result) => _$this._result = result;

  SendSmsBuilder();

  SendSmsBuilder get _$this {
    if (_$v != null) {
      _result = _$v.result;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SendSms other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SendSms;
  }

  @override
  void update(void Function(SendSmsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SendSms build() {
    final _$result = _$v ?? new _$SendSms._(result: result);
    replace(_$result);
    return _$result;
  }
}

class _$SendSmsSuccessful extends SendSmsSuccessful {
  @override
  final String verificationId;

  factory _$SendSmsSuccessful(
          [void Function(SendSmsSuccessfulBuilder) updates]) =>
      (new SendSmsSuccessfulBuilder()..update(updates)).build();

  _$SendSmsSuccessful._({this.verificationId}) : super._() {
    if (verificationId == null) {
      throw new BuiltValueNullFieldError('SendSmsSuccessful', 'verificationId');
    }
  }

  @override
  SendSmsSuccessful rebuild(void Function(SendSmsSuccessfulBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SendSmsSuccessfulBuilder toBuilder() =>
      new SendSmsSuccessfulBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SendSmsSuccessful && verificationId == other.verificationId;
  }

  @override
  int get hashCode {
    return $jf($jc(0, verificationId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SendSmsSuccessful')
          ..add('verificationId', verificationId))
        .toString();
  }
}

class SendSmsSuccessfulBuilder
    implements Builder<SendSmsSuccessful, SendSmsSuccessfulBuilder> {
  _$SendSmsSuccessful _$v;

  String _verificationId;
  String get verificationId => _$this._verificationId;
  set verificationId(String verificationId) =>
      _$this._verificationId = verificationId;

  SendSmsSuccessfulBuilder();

  SendSmsSuccessfulBuilder get _$this {
    if (_$v != null) {
      _verificationId = _$v.verificationId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SendSmsSuccessful other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SendSmsSuccessful;
  }

  @override
  void update(void Function(SendSmsSuccessfulBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SendSmsSuccessful build() {
    final _$result =
        _$v ?? new _$SendSmsSuccessful._(verificationId: verificationId);
    replace(_$result);
    return _$result;
  }
}

class _$SendSmsError extends SendSmsError {
  @override
  final Object error;

  factory _$SendSmsError([void Function(SendSmsErrorBuilder) updates]) =>
      (new SendSmsErrorBuilder()..update(updates)).build();

  _$SendSmsError._({this.error}) : super._() {
    if (error == null) {
      throw new BuiltValueNullFieldError('SendSmsError', 'error');
    }
  }

  @override
  SendSmsError rebuild(void Function(SendSmsErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SendSmsErrorBuilder toBuilder() => new SendSmsErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SendSmsError && error == other.error;
  }

  @override
  int get hashCode {
    return $jf($jc(0, error.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SendSmsError')..add('error', error))
        .toString();
  }
}

class SendSmsErrorBuilder
    implements Builder<SendSmsError, SendSmsErrorBuilder> {
  _$SendSmsError _$v;

  Object _error;
  Object get error => _$this._error;
  set error(Object error) => _$this._error = error;

  SendSmsErrorBuilder();

  SendSmsErrorBuilder get _$this {
    if (_$v != null) {
      _error = _$v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SendSmsError other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SendSmsError;
  }

  @override
  void update(void Function(SendSmsErrorBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SendSmsError build() {
    final _$result = _$v ?? new _$SendSmsError._(error: error);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
