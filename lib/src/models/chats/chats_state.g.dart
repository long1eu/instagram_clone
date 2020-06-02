// GENERATED CODE - DO NOT MODIFY BY HAND

part of chats_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ChatsState> _$chatsStateSerializer = new _$ChatsStateSerializer();

class _$ChatsStateSerializer implements StructuredSerializer<ChatsState> {
  @override
  final Iterable<Type> types = const [ChatsState, _$ChatsState];
  @override
  final String wireName = 'ChatsState';

  @override
  Iterable<Object> serialize(Serializers serializers, ChatsState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'chats',
      serializers.serialize(object.chats,
          specifiedType: const FullType(
              BuiltMap, const [const FullType(String), const FullType(Chat)])),
    ];
    if (object.selectedChatId != null) {
      result
        ..add('selectedChatId')
        ..add(serializers.serialize(object.selectedChatId,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ChatsState deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ChatsStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'chats':
          result.chats.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap,
                  const [const FullType(String), const FullType(Chat)])));
          break;
        case 'selectedChatId':
          result.selectedChatId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ChatsState extends ChatsState {
  @override
  final BuiltMap<String, Chat> chats;
  @override
  final String selectedChatId;

  factory _$ChatsState([void Function(ChatsStateBuilder) updates]) =>
      (new ChatsStateBuilder()..update(updates)).build();

  _$ChatsState._({this.chats, this.selectedChatId}) : super._() {
    if (chats == null) {
      throw new BuiltValueNullFieldError('ChatsState', 'chats');
    }
  }

  @override
  ChatsState rebuild(void Function(ChatsStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChatsStateBuilder toBuilder() => new ChatsStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChatsState &&
        chats == other.chats &&
        selectedChatId == other.selectedChatId;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, chats.hashCode), selectedChatId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ChatsState')
          ..add('chats', chats)
          ..add('selectedChatId', selectedChatId))
        .toString();
  }
}

class ChatsStateBuilder implements Builder<ChatsState, ChatsStateBuilder> {
  _$ChatsState _$v;

  MapBuilder<String, Chat> _chats;
  MapBuilder<String, Chat> get chats =>
      _$this._chats ??= new MapBuilder<String, Chat>();
  set chats(MapBuilder<String, Chat> chats) => _$this._chats = chats;

  String _selectedChatId;
  String get selectedChatId => _$this._selectedChatId;
  set selectedChatId(String selectedChatId) =>
      _$this._selectedChatId = selectedChatId;

  ChatsStateBuilder();

  ChatsStateBuilder get _$this {
    if (_$v != null) {
      _chats = _$v.chats?.toBuilder();
      _selectedChatId = _$v.selectedChatId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChatsState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ChatsState;
  }

  @override
  void update(void Function(ChatsStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ChatsState build() {
    _$ChatsState _$result;
    try {
      _$result = _$v ??
          new _$ChatsState._(
              chats: chats.build(), selectedChatId: selectedChatId);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'chats';
        chats.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ChatsState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
