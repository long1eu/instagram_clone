// GENERATED CODE - DO NOT MODIFY BY HAND

part of comments_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CommentsState> _$commentsStateSerializer =
    new _$CommentsStateSerializer();

class _$CommentsStateSerializer implements StructuredSerializer<CommentsState> {
  @override
  final Iterable<Type> types = const [CommentsState, _$CommentsState];
  @override
  final String wireName = 'CommentsState';

  @override
  Iterable<Object> serialize(Serializers serializers, CommentsState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'comments',
      serializers.serialize(object.comments,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Comment)])),
    ];

    return result;
  }

  @override
  CommentsState deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CommentsStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'comments':
          result.comments.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Comment)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$CommentsState extends CommentsState {
  @override
  final BuiltList<Comment> comments;

  factory _$CommentsState([void Function(CommentsStateBuilder) updates]) =>
      (new CommentsStateBuilder()..update(updates)).build();

  _$CommentsState._({this.comments}) : super._() {
    if (comments == null) {
      throw new BuiltValueNullFieldError('CommentsState', 'comments');
    }
  }

  @override
  CommentsState rebuild(void Function(CommentsStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CommentsStateBuilder toBuilder() => new CommentsStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CommentsState && comments == other.comments;
  }

  @override
  int get hashCode {
    return $jf($jc(0, comments.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CommentsState')
          ..add('comments', comments))
        .toString();
  }
}

class CommentsStateBuilder
    implements Builder<CommentsState, CommentsStateBuilder> {
  _$CommentsState _$v;

  ListBuilder<Comment> _comments;
  ListBuilder<Comment> get comments =>
      _$this._comments ??= new ListBuilder<Comment>();
  set comments(ListBuilder<Comment> comments) => _$this._comments = comments;

  CommentsStateBuilder();

  CommentsStateBuilder get _$this {
    if (_$v != null) {
      _comments = _$v.comments?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CommentsState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CommentsState;
  }

  @override
  void update(void Function(CommentsStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CommentsState build() {
    _$CommentsState _$result;
    try {
      _$result = _$v ?? new _$CommentsState._(comments: comments.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'comments';
        comments.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CommentsState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
