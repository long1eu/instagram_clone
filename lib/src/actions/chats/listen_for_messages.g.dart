// GENERATED CODE - DO NOT MODIFY BY HAND

part of listen_for_messages;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListenForMessages extends ListenForMessages {
  factory _$ListenForMessages(
          [void Function(ListenForMessagesBuilder) updates]) =>
      (new ListenForMessagesBuilder()..update(updates)).build();

  _$ListenForMessages._() : super._();

  @override
  ListenForMessages rebuild(void Function(ListenForMessagesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListenForMessagesBuilder toBuilder() =>
      new ListenForMessagesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListenForMessages;
  }

  @override
  int get hashCode {
    return 522759440;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('ListenForMessages').toString();
  }
}

class ListenForMessagesBuilder
    implements Builder<ListenForMessages, ListenForMessagesBuilder> {
  _$ListenForMessages _$v;

  ListenForMessagesBuilder();

  @override
  void replace(ListenForMessages other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ListenForMessages;
  }

  @override
  void update(void Function(ListenForMessagesBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ListenForMessages build() {
    final _$result = _$v ?? new _$ListenForMessages._();
    replace(_$result);
    return _$result;
  }
}

class _$StopListenForMessages extends StopListenForMessages {
  factory _$StopListenForMessages(
          [void Function(StopListenForMessagesBuilder) updates]) =>
      (new StopListenForMessagesBuilder()..update(updates)).build();

  _$StopListenForMessages._() : super._();

  @override
  StopListenForMessages rebuild(
          void Function(StopListenForMessagesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StopListenForMessagesBuilder toBuilder() =>
      new StopListenForMessagesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StopListenForMessages;
  }

  @override
  int get hashCode {
    return 877425835;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('StopListenForMessages').toString();
  }
}

class StopListenForMessagesBuilder
    implements Builder<StopListenForMessages, StopListenForMessagesBuilder> {
  _$StopListenForMessages _$v;

  StopListenForMessagesBuilder();

  @override
  void replace(StopListenForMessages other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$StopListenForMessages;
  }

  @override
  void update(void Function(StopListenForMessagesBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$StopListenForMessages build() {
    final _$result = _$v ?? new _$StopListenForMessages._();
    replace(_$result);
    return _$result;
  }
}

class _$OnMessagesEvent extends OnMessagesEvent {
  @override
  final BuiltList<Message> messages;

  factory _$OnMessagesEvent([void Function(OnMessagesEventBuilder) updates]) =>
      (new OnMessagesEventBuilder()..update(updates)).build();

  _$OnMessagesEvent._({this.messages}) : super._() {
    if (messages == null) {
      throw new BuiltValueNullFieldError('OnMessagesEvent', 'messages');
    }
  }

  @override
  OnMessagesEvent rebuild(void Function(OnMessagesEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OnMessagesEventBuilder toBuilder() =>
      new OnMessagesEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OnMessagesEvent && messages == other.messages;
  }

  @override
  int get hashCode {
    return $jf($jc(0, messages.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OnMessagesEvent')
          ..add('messages', messages))
        .toString();
  }
}

class OnMessagesEventBuilder
    implements Builder<OnMessagesEvent, OnMessagesEventBuilder> {
  _$OnMessagesEvent _$v;

  ListBuilder<Message> _messages;
  ListBuilder<Message> get messages =>
      _$this._messages ??= new ListBuilder<Message>();
  set messages(ListBuilder<Message> messages) => _$this._messages = messages;

  OnMessagesEventBuilder();

  OnMessagesEventBuilder get _$this {
    if (_$v != null) {
      _messages = _$v.messages?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OnMessagesEvent other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$OnMessagesEvent;
  }

  @override
  void update(void Function(OnMessagesEventBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$OnMessagesEvent build() {
    _$OnMessagesEvent _$result;
    try {
      _$result = _$v ?? new _$OnMessagesEvent._(messages: messages.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'messages';
        messages.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'OnMessagesEvent', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$ListenForMessagesError extends ListenForMessagesError {
  @override
  final Object error;

  factory _$ListenForMessagesError(
          [void Function(ListenForMessagesErrorBuilder) updates]) =>
      (new ListenForMessagesErrorBuilder()..update(updates)).build();

  _$ListenForMessagesError._({this.error}) : super._() {
    if (error == null) {
      throw new BuiltValueNullFieldError('ListenForMessagesError', 'error');
    }
  }

  @override
  ListenForMessagesError rebuild(
          void Function(ListenForMessagesErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListenForMessagesErrorBuilder toBuilder() =>
      new ListenForMessagesErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListenForMessagesError && error == other.error;
  }

  @override
  int get hashCode {
    return $jf($jc(0, error.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ListenForMessagesError')
          ..add('error', error))
        .toString();
  }
}

class ListenForMessagesErrorBuilder
    implements Builder<ListenForMessagesError, ListenForMessagesErrorBuilder> {
  _$ListenForMessagesError _$v;

  Object _error;
  Object get error => _$this._error;
  set error(Object error) => _$this._error = error;

  ListenForMessagesErrorBuilder();

  ListenForMessagesErrorBuilder get _$this {
    if (_$v != null) {
      _error = _$v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListenForMessagesError other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ListenForMessagesError;
  }

  @override
  void update(void Function(ListenForMessagesErrorBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ListenForMessagesError build() {
    final _$result = _$v ?? new _$ListenForMessagesError._(error: error);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
