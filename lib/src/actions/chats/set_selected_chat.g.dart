// GENERATED CODE - DO NOT MODIFY BY HAND

part of set_selected_chat;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SetSelectedChat extends SetSelectedChat {
  @override
  final String chatId;

  factory _$SetSelectedChat([void Function(SetSelectedChatBuilder) updates]) =>
      (new SetSelectedChatBuilder()..update(updates)).build();

  _$SetSelectedChat._({this.chatId}) : super._() {
    if (chatId == null) {
      throw new BuiltValueNullFieldError('SetSelectedChat', 'chatId');
    }
  }

  @override
  SetSelectedChat rebuild(void Function(SetSelectedChatBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SetSelectedChatBuilder toBuilder() =>
      new SetSelectedChatBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SetSelectedChat && chatId == other.chatId;
  }

  @override
  int get hashCode {
    return $jf($jc(0, chatId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SetSelectedChat')
          ..add('chatId', chatId))
        .toString();
  }
}

class SetSelectedChatBuilder
    implements Builder<SetSelectedChat, SetSelectedChatBuilder> {
  _$SetSelectedChat _$v;

  String _chatId;
  String get chatId => _$this._chatId;
  set chatId(String chatId) => _$this._chatId = chatId;

  SetSelectedChatBuilder();

  SetSelectedChatBuilder get _$this {
    if (_$v != null) {
      _chatId = _$v.chatId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SetSelectedChat other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SetSelectedChat;
  }

  @override
  void update(void Function(SetSelectedChatBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SetSelectedChat build() {
    final _$result = _$v ?? new _$SetSelectedChat._(chatId: chatId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
