// GENERATED CODE - DO NOT MODIFY BY HAND

part of create_message;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateMessage extends CreateMessage {
  @override
  final String text;

  factory _$CreateMessage([void Function(CreateMessageBuilder) updates]) =>
      (new CreateMessageBuilder()..update(updates)).build();

  _$CreateMessage._({this.text}) : super._() {
    if (text == null) {
      throw new BuiltValueNullFieldError('CreateMessage', 'text');
    }
  }

  @override
  CreateMessage rebuild(void Function(CreateMessageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateMessageBuilder toBuilder() => new CreateMessageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateMessage && text == other.text;
  }

  @override
  int get hashCode {
    return $jf($jc(0, text.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CreateMessage')..add('text', text))
        .toString();
  }
}

class CreateMessageBuilder
    implements Builder<CreateMessage, CreateMessageBuilder> {
  _$CreateMessage _$v;

  String _text;
  String get text => _$this._text;
  set text(String text) => _$this._text = text;

  CreateMessageBuilder();

  CreateMessageBuilder get _$this {
    if (_$v != null) {
      _text = _$v.text;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateMessage other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CreateMessage;
  }

  @override
  void update(void Function(CreateMessageBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CreateMessage build() {
    final _$result = _$v ?? new _$CreateMessage._(text: text);
    replace(_$result);
    return _$result;
  }
}

class _$CreateMessageSuccessful extends CreateMessageSuccessful {
  @override
  final Message message;

  factory _$CreateMessageSuccessful(
          [void Function(CreateMessageSuccessfulBuilder) updates]) =>
      (new CreateMessageSuccessfulBuilder()..update(updates)).build();

  _$CreateMessageSuccessful._({this.message}) : super._() {
    if (message == null) {
      throw new BuiltValueNullFieldError('CreateMessageSuccessful', 'message');
    }
  }

  @override
  CreateMessageSuccessful rebuild(
          void Function(CreateMessageSuccessfulBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateMessageSuccessfulBuilder toBuilder() =>
      new CreateMessageSuccessfulBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateMessageSuccessful && message == other.message;
  }

  @override
  int get hashCode {
    return $jf($jc(0, message.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CreateMessageSuccessful')
          ..add('message', message))
        .toString();
  }
}

class CreateMessageSuccessfulBuilder
    implements
        Builder<CreateMessageSuccessful, CreateMessageSuccessfulBuilder> {
  _$CreateMessageSuccessful _$v;

  MessageBuilder _message;
  MessageBuilder get message => _$this._message ??= new MessageBuilder();
  set message(MessageBuilder message) => _$this._message = message;

  CreateMessageSuccessfulBuilder();

  CreateMessageSuccessfulBuilder get _$this {
    if (_$v != null) {
      _message = _$v.message?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateMessageSuccessful other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CreateMessageSuccessful;
  }

  @override
  void update(void Function(CreateMessageSuccessfulBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CreateMessageSuccessful build() {
    _$CreateMessageSuccessful _$result;
    try {
      _$result =
          _$v ?? new _$CreateMessageSuccessful._(message: message.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'message';
        message.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CreateMessageSuccessful', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$CreateMessageError extends CreateMessageError {
  @override
  final Object error;

  factory _$CreateMessageError(
          [void Function(CreateMessageErrorBuilder) updates]) =>
      (new CreateMessageErrorBuilder()..update(updates)).build();

  _$CreateMessageError._({this.error}) : super._() {
    if (error == null) {
      throw new BuiltValueNullFieldError('CreateMessageError', 'error');
    }
  }

  @override
  CreateMessageError rebuild(
          void Function(CreateMessageErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateMessageErrorBuilder toBuilder() =>
      new CreateMessageErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateMessageError && error == other.error;
  }

  @override
  int get hashCode {
    return $jf($jc(0, error.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CreateMessageError')
          ..add('error', error))
        .toString();
  }
}

class CreateMessageErrorBuilder
    implements Builder<CreateMessageError, CreateMessageErrorBuilder> {
  _$CreateMessageError _$v;

  Object _error;
  Object get error => _$this._error;
  set error(Object error) => _$this._error = error;

  CreateMessageErrorBuilder();

  CreateMessageErrorBuilder get _$this {
    if (_$v != null) {
      _error = _$v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateMessageError other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CreateMessageError;
  }

  @override
  void update(void Function(CreateMessageErrorBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CreateMessageError build() {
    final _$result = _$v ?? new _$CreateMessageError._(error: error);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
