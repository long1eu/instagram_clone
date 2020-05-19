// GENERATED CODE - DO NOT MODIFY BY HAND

part of likes_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LikesState> _$likesStateSerializer = new _$LikesStateSerializer();

class _$LikesStateSerializer implements StructuredSerializer<LikesState> {
  @override
  final Iterable<Type> types = const [LikesState, _$LikesState];
  @override
  final String wireName = 'LikesState';

  @override
  Iterable<Object> serialize(Serializers serializers, LikesState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'posts',
      serializers.serialize(object.posts,
          specifiedType: const FullType(BuiltMap, const [
            const FullType(String),
            const FullType(BuiltList, const [const FullType(Like)])
          ])),
    ];

    return result;
  }

  @override
  LikesState deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LikesStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'posts':
          result.posts.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap, const [
                const FullType(String),
                const FullType(BuiltList, const [const FullType(Like)])
              ])));
          break;
      }
    }

    return result.build();
  }
}

class _$LikesState extends LikesState {
  @override
  final BuiltMap<String, BuiltList<Like>> posts;

  factory _$LikesState([void Function(LikesStateBuilder) updates]) =>
      (new LikesStateBuilder()..update(updates)).build();

  _$LikesState._({this.posts}) : super._() {
    if (posts == null) {
      throw new BuiltValueNullFieldError('LikesState', 'posts');
    }
  }

  @override
  LikesState rebuild(void Function(LikesStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LikesStateBuilder toBuilder() => new LikesStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LikesState && posts == other.posts;
  }

  @override
  int get hashCode {
    return $jf($jc(0, posts.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LikesState')..add('posts', posts))
        .toString();
  }
}

class LikesStateBuilder implements Builder<LikesState, LikesStateBuilder> {
  _$LikesState _$v;

  MapBuilder<String, BuiltList<Like>> _posts;
  MapBuilder<String, BuiltList<Like>> get posts =>
      _$this._posts ??= new MapBuilder<String, BuiltList<Like>>();
  set posts(MapBuilder<String, BuiltList<Like>> posts) => _$this._posts = posts;

  LikesStateBuilder();

  LikesStateBuilder get _$this {
    if (_$v != null) {
      _posts = _$v.posts?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LikesState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$LikesState;
  }

  @override
  void update(void Function(LikesStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LikesState build() {
    _$LikesState _$result;
    try {
      _$result = _$v ?? new _$LikesState._(posts: posts.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'posts';
        posts.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'LikesState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
