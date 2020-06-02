// GENERATED CODE - DO NOT MODIFY BY HAND

part of chat;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Chat> _$chatSerializer = new _$ChatSerializer();

class _$ChatSerializer implements StructuredSerializer<Chat> {
  @override
  final Iterable<Type> types = const [Chat, _$Chat];
  @override
  final String wireName = 'Chat';

  @override
  Iterable<Object> serialize(Serializers serializers, Chat object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'users',
      serializers.serialize(object.users,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
    ];
    if (object.lastMessage != null) {
      result
        ..add('lastMessage')
        ..add(serializers.serialize(object.lastMessage,
            specifiedType: const FullType(Message)));
    }
    return result;
  }

  @override
  Chat deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ChatBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'users':
          result.users.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'lastMessage':
          result.lastMessage.replace(serializers.deserialize(value,
              specifiedType: const FullType(Message)) as Message);
          break;
      }
    }

    return result.build();
  }
}

class _$Chat extends Chat {
  @override
  final String id;
  @override
  final BuiltList<String> users;
  @override
  final Message lastMessage;

  factory _$Chat([void Function(ChatBuilder) updates]) =>
      (new ChatBuilder()..update(updates)).build();

  _$Chat._({this.id, this.users, this.lastMessage}) : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('Chat', 'id');
    }
    if (users == null) {
      throw new BuiltValueNullFieldError('Chat', 'users');
    }
  }

  @override
  Chat rebuild(void Function(ChatBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChatBuilder toBuilder() => new ChatBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Chat &&
        id == other.id &&
        users == other.users &&
        lastMessage == other.lastMessage;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, id.hashCode), users.hashCode), lastMessage.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Chat')
          ..add('id', id)
          ..add('users', users)
          ..add('lastMessage', lastMessage))
        .toString();
  }
}

class ChatBuilder implements Builder<Chat, ChatBuilder> {
  _$Chat _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  ListBuilder<String> _users;
  ListBuilder<String> get users => _$this._users ??= new ListBuilder<String>();
  set users(ListBuilder<String> users) => _$this._users = users;

  MessageBuilder _lastMessage;
  MessageBuilder get lastMessage =>
      _$this._lastMessage ??= new MessageBuilder();
  set lastMessage(MessageBuilder lastMessage) =>
      _$this._lastMessage = lastMessage;

  ChatBuilder();

  ChatBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _users = _$v.users?.toBuilder();
      _lastMessage = _$v.lastMessage?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Chat other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Chat;
  }

  @override
  void update(void Function(ChatBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Chat build() {
    _$Chat _$result;
    try {
      _$result = _$v ??
          new _$Chat._(
              id: id, users: users.build(), lastMessage: _lastMessage?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'users';
        users.build();
        _$failedField = 'lastMessage';
        _lastMessage?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Chat', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
