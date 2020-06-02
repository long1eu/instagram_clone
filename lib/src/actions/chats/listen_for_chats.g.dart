// GENERATED CODE - DO NOT MODIFY BY HAND

part of listen_for_chats;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListenForChats extends ListenForChats {
  factory _$ListenForChats([void Function(ListenForChatsBuilder) updates]) =>
      (new ListenForChatsBuilder()..update(updates)).build();

  _$ListenForChats._() : super._();

  @override
  ListenForChats rebuild(void Function(ListenForChatsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListenForChatsBuilder toBuilder() =>
      new ListenForChatsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListenForChats;
  }

  @override
  int get hashCode {
    return 422647770;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('ListenForChats').toString();
  }
}

class ListenForChatsBuilder
    implements Builder<ListenForChats, ListenForChatsBuilder> {
  _$ListenForChats _$v;

  ListenForChatsBuilder();

  @override
  void replace(ListenForChats other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ListenForChats;
  }

  @override
  void update(void Function(ListenForChatsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ListenForChats build() {
    final _$result = _$v ?? new _$ListenForChats._();
    replace(_$result);
    return _$result;
  }
}

class _$StopListenForChats extends StopListenForChats {
  factory _$StopListenForChats(
          [void Function(StopListenForChatsBuilder) updates]) =>
      (new StopListenForChatsBuilder()..update(updates)).build();

  _$StopListenForChats._() : super._();

  @override
  StopListenForChats rebuild(
          void Function(StopListenForChatsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StopListenForChatsBuilder toBuilder() =>
      new StopListenForChatsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StopListenForChats;
  }

  @override
  int get hashCode {
    return 823424449;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('StopListenForChats').toString();
  }
}

class StopListenForChatsBuilder
    implements Builder<StopListenForChats, StopListenForChatsBuilder> {
  _$StopListenForChats _$v;

  StopListenForChatsBuilder();

  @override
  void replace(StopListenForChats other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$StopListenForChats;
  }

  @override
  void update(void Function(StopListenForChatsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$StopListenForChats build() {
    final _$result = _$v ?? new _$StopListenForChats._();
    replace(_$result);
    return _$result;
  }
}

class _$OnChatEvent extends OnChatEvent {
  @override
  final BuiltList<Chat> chats;

  factory _$OnChatEvent([void Function(OnChatEventBuilder) updates]) =>
      (new OnChatEventBuilder()..update(updates)).build();

  _$OnChatEvent._({this.chats}) : super._() {
    if (chats == null) {
      throw new BuiltValueNullFieldError('OnChatEvent', 'chats');
    }
  }

  @override
  OnChatEvent rebuild(void Function(OnChatEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OnChatEventBuilder toBuilder() => new OnChatEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OnChatEvent && chats == other.chats;
  }

  @override
  int get hashCode {
    return $jf($jc(0, chats.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OnChatEvent')..add('chats', chats))
        .toString();
  }
}

class OnChatEventBuilder implements Builder<OnChatEvent, OnChatEventBuilder> {
  _$OnChatEvent _$v;

  ListBuilder<Chat> _chats;
  ListBuilder<Chat> get chats => _$this._chats ??= new ListBuilder<Chat>();
  set chats(ListBuilder<Chat> chats) => _$this._chats = chats;

  OnChatEventBuilder();

  OnChatEventBuilder get _$this {
    if (_$v != null) {
      _chats = _$v.chats?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OnChatEvent other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$OnChatEvent;
  }

  @override
  void update(void Function(OnChatEventBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$OnChatEvent build() {
    _$OnChatEvent _$result;
    try {
      _$result = _$v ?? new _$OnChatEvent._(chats: chats.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'chats';
        chats.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'OnChatEvent', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$ListenForChatsError extends ListenForChatsError {
  @override
  final Object error;

  factory _$ListenForChatsError(
          [void Function(ListenForChatsErrorBuilder) updates]) =>
      (new ListenForChatsErrorBuilder()..update(updates)).build();

  _$ListenForChatsError._({this.error}) : super._() {
    if (error == null) {
      throw new BuiltValueNullFieldError('ListenForChatsError', 'error');
    }
  }

  @override
  ListenForChatsError rebuild(
          void Function(ListenForChatsErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListenForChatsErrorBuilder toBuilder() =>
      new ListenForChatsErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListenForChatsError && error == other.error;
  }

  @override
  int get hashCode {
    return $jf($jc(0, error.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ListenForChatsError')
          ..add('error', error))
        .toString();
  }
}

class ListenForChatsErrorBuilder
    implements Builder<ListenForChatsError, ListenForChatsErrorBuilder> {
  _$ListenForChatsError _$v;

  Object _error;
  Object get error => _$this._error;
  set error(Object error) => _$this._error = error;

  ListenForChatsErrorBuilder();

  ListenForChatsErrorBuilder get _$this {
    if (_$v != null) {
      _error = _$v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListenForChatsError other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ListenForChatsError;
  }

  @override
  void update(void Function(ListenForChatsErrorBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ListenForChatsError build() {
    final _$result = _$v ?? new _$ListenForChatsError._(error: error);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
