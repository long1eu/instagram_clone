// GENERATED CODE - DO NOT MODIFY BY HAND

part of posts_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PostsState> _$postsStateSerializer = new _$PostsStateSerializer();

class _$PostsStateSerializer implements StructuredSerializer<PostsState> {
  @override
  final Iterable<Type> types = const [PostsState, _$PostsState];
  @override
  final String wireName = 'PostsState';

  @override
  Iterable<Object> serialize(Serializers serializers, PostsState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'posts',
      serializers.serialize(object.posts,
          specifiedType: const FullType(
              BuiltMap, const [const FullType(String), const FullType(Post)])),
    ];
    if (object.savePostInfo != null) {
      result
        ..add('savePostInfo')
        ..add(serializers.serialize(object.savePostInfo,
            specifiedType: const FullType(SavePostInfo)));
    }
    if (object.selectedPostId != null) {
      result
        ..add('selectedPostId')
        ..add(serializers.serialize(object.selectedPostId,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  PostsState deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PostsStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'posts':
          result.posts.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap,
                  const [const FullType(String), const FullType(Post)])));
          break;
        case 'savePostInfo':
          result.savePostInfo.replace(serializers.deserialize(value,
              specifiedType: const FullType(SavePostInfo)) as SavePostInfo);
          break;
        case 'selectedPostId':
          result.selectedPostId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$PostsState extends PostsState {
  @override
  final BuiltMap<String, Post> posts;
  @override
  final SavePostInfo savePostInfo;
  @override
  final String selectedPostId;

  factory _$PostsState([void Function(PostsStateBuilder) updates]) =>
      (new PostsStateBuilder()..update(updates)).build();

  _$PostsState._({this.posts, this.savePostInfo, this.selectedPostId})
      : super._() {
    if (posts == null) {
      throw new BuiltValueNullFieldError('PostsState', 'posts');
    }
  }

  @override
  PostsState rebuild(void Function(PostsStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostsStateBuilder toBuilder() => new PostsStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostsState &&
        posts == other.posts &&
        savePostInfo == other.savePostInfo &&
        selectedPostId == other.selectedPostId;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, posts.hashCode), savePostInfo.hashCode),
        selectedPostId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PostsState')
          ..add('posts', posts)
          ..add('savePostInfo', savePostInfo)
          ..add('selectedPostId', selectedPostId))
        .toString();
  }
}

class PostsStateBuilder implements Builder<PostsState, PostsStateBuilder> {
  _$PostsState _$v;

  MapBuilder<String, Post> _posts;
  MapBuilder<String, Post> get posts =>
      _$this._posts ??= new MapBuilder<String, Post>();
  set posts(MapBuilder<String, Post> posts) => _$this._posts = posts;

  SavePostInfoBuilder _savePostInfo;
  SavePostInfoBuilder get savePostInfo =>
      _$this._savePostInfo ??= new SavePostInfoBuilder();
  set savePostInfo(SavePostInfoBuilder savePostInfo) =>
      _$this._savePostInfo = savePostInfo;

  String _selectedPostId;
  String get selectedPostId => _$this._selectedPostId;
  set selectedPostId(String selectedPostId) =>
      _$this._selectedPostId = selectedPostId;

  PostsStateBuilder();

  PostsStateBuilder get _$this {
    if (_$v != null) {
      _posts = _$v.posts?.toBuilder();
      _savePostInfo = _$v.savePostInfo?.toBuilder();
      _selectedPostId = _$v.selectedPostId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostsState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PostsState;
  }

  @override
  void update(void Function(PostsStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PostsState build() {
    _$PostsState _$result;
    try {
      _$result = _$v ??
          new _$PostsState._(
              posts: posts.build(),
              savePostInfo: _savePostInfo?.build(),
              selectedPostId: selectedPostId);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'posts';
        posts.build();
        _$failedField = 'savePostInfo';
        _savePostInfo?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'PostsState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
