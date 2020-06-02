// GENERATED CODE - DO NOT MODIFY BY HAND

part of create_chat;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateChat extends CreateChat {
  @override
  final String otherUid;

  factory _$CreateChat([void Function(CreateChatBuilder) updates]) =>
      (new CreateChatBuilder()..update(updates)).build();

  _$CreateChat._({this.otherUid}) : super._() {
    if (otherUid == null) {
      throw new BuiltValueNullFieldError('CreateChat', 'otherUid');
    }
  }

  @override
  CreateChat rebuild(void Function(CreateChatBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateChatBuilder toBuilder() => new CreateChatBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateChat && otherUid == other.otherUid;
  }

  @override
  int get hashCode {
    return $jf($jc(0, otherUid.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CreateChat')
          ..add('otherUid', otherUid))
        .toString();
  }
}

class CreateChatBuilder implements Builder<CreateChat, CreateChatBuilder> {
  _$CreateChat _$v;

  String _otherUid;
  String get otherUid => _$this._otherUid;
  set otherUid(String otherUid) => _$this._otherUid = otherUid;

  CreateChatBuilder();

  CreateChatBuilder get _$this {
    if (_$v != null) {
      _otherUid = _$v.otherUid;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateChat other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CreateChat;
  }

  @override
  void update(void Function(CreateChatBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CreateChat build() {
    final _$result = _$v ?? new _$CreateChat._(otherUid: otherUid);
    replace(_$result);
    return _$result;
  }
}

class _$CreateChatSuccessful extends CreateChatSuccessful {
  @override
  final Chat chat;

  factory _$CreateChatSuccessful(
          [void Function(CreateChatSuccessfulBuilder) updates]) =>
      (new CreateChatSuccessfulBuilder()..update(updates)).build();

  _$CreateChatSuccessful._({this.chat}) : super._() {
    if (chat == null) {
      throw new BuiltValueNullFieldError('CreateChatSuccessful', 'chat');
    }
  }

  @override
  CreateChatSuccessful rebuild(
          void Function(CreateChatSuccessfulBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateChatSuccessfulBuilder toBuilder() =>
      new CreateChatSuccessfulBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateChatSuccessful && chat == other.chat;
  }

  @override
  int get hashCode {
    return $jf($jc(0, chat.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CreateChatSuccessful')
          ..add('chat', chat))
        .toString();
  }
}

class CreateChatSuccessfulBuilder
    implements Builder<CreateChatSuccessful, CreateChatSuccessfulBuilder> {
  _$CreateChatSuccessful _$v;

  ChatBuilder _chat;
  ChatBuilder get chat => _$this._chat ??= new ChatBuilder();
  set chat(ChatBuilder chat) => _$this._chat = chat;

  CreateChatSuccessfulBuilder();

  CreateChatSuccessfulBuilder get _$this {
    if (_$v != null) {
      _chat = _$v.chat?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateChatSuccessful other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CreateChatSuccessful;
  }

  @override
  void update(void Function(CreateChatSuccessfulBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CreateChatSuccessful build() {
    _$CreateChatSuccessful _$result;
    try {
      _$result = _$v ?? new _$CreateChatSuccessful._(chat: chat.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'chat';
        chat.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CreateChatSuccessful', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$CreateChatError extends CreateChatError {
  @override
  final Object error;

  factory _$CreateChatError([void Function(CreateChatErrorBuilder) updates]) =>
      (new CreateChatErrorBuilder()..update(updates)).build();

  _$CreateChatError._({this.error}) : super._() {
    if (error == null) {
      throw new BuiltValueNullFieldError('CreateChatError', 'error');
    }
  }

  @override
  CreateChatError rebuild(void Function(CreateChatErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateChatErrorBuilder toBuilder() =>
      new CreateChatErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateChatError && error == other.error;
  }

  @override
  int get hashCode {
    return $jf($jc(0, error.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CreateChatError')..add('error', error))
        .toString();
  }
}

class CreateChatErrorBuilder
    implements Builder<CreateChatError, CreateChatErrorBuilder> {
  _$CreateChatError _$v;

  Object _error;
  Object get error => _$this._error;
  set error(Object error) => _$this._error = error;

  CreateChatErrorBuilder();

  CreateChatErrorBuilder get _$this {
    if (_$v != null) {
      _error = _$v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateChatError other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CreateChatError;
  }

  @override
  void update(void Function(CreateChatErrorBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CreateChatError build() {
    final _$result = _$v ?? new _$CreateChatError._(error: error);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
