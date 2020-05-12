// GENERATED CODE - DO NOT MODIFY BY HAND

part of post;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Post> _$postSerializer = new _$PostSerializer();

class _$PostSerializer implements StructuredSerializer<Post> {
  @override
  final Iterable<Type> types = const [Post, _$Post];
  @override
  final String wireName = 'Post';

  @override
  Iterable<Object> serialize(Serializers serializers, Post object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'uid',
      serializers.serialize(object.uid, specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
      'createdAt',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(DateTime)),
      'likes',
      serializers.serialize(object.likes, specifiedType: const FullType(int)),
      'pictures',
      serializers.serialize(object.pictures,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
    ];

    return result;
  }

  @override
  Post deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PostBuilder();

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
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'likes':
          result.likes = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'pictures':
          result.pictures.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$Post extends Post {
  @override
  final String id;
  @override
  final String uid;
  @override
  final String description;
  @override
  final DateTime createdAt;
  @override
  final int likes;
  @override
  final BuiltList<String> pictures;

  factory _$Post([void Function(PostBuilder) updates]) =>
      (new PostBuilder()..update(updates)).build();

  _$Post._(
      {this.id,
      this.uid,
      this.description,
      this.createdAt,
      this.likes,
      this.pictures})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('Post', 'id');
    }
    if (uid == null) {
      throw new BuiltValueNullFieldError('Post', 'uid');
    }
    if (description == null) {
      throw new BuiltValueNullFieldError('Post', 'description');
    }
    if (createdAt == null) {
      throw new BuiltValueNullFieldError('Post', 'createdAt');
    }
    if (likes == null) {
      throw new BuiltValueNullFieldError('Post', 'likes');
    }
    if (pictures == null) {
      throw new BuiltValueNullFieldError('Post', 'pictures');
    }
  }

  @override
  Post rebuild(void Function(PostBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostBuilder toBuilder() => new PostBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Post &&
        id == other.id &&
        uid == other.uid &&
        description == other.description &&
        createdAt == other.createdAt &&
        likes == other.likes &&
        pictures == other.pictures;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, id.hashCode), uid.hashCode),
                    description.hashCode),
                createdAt.hashCode),
            likes.hashCode),
        pictures.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Post')
          ..add('id', id)
          ..add('uid', uid)
          ..add('description', description)
          ..add('createdAt', createdAt)
          ..add('likes', likes)
          ..add('pictures', pictures))
        .toString();
  }
}

class PostBuilder implements Builder<Post, PostBuilder> {
  _$Post _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _uid;
  String get uid => _$this._uid;
  set uid(String uid) => _$this._uid = uid;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  DateTime _createdAt;
  DateTime get createdAt => _$this._createdAt;
  set createdAt(DateTime createdAt) => _$this._createdAt = createdAt;

  int _likes;
  int get likes => _$this._likes;
  set likes(int likes) => _$this._likes = likes;

  ListBuilder<String> _pictures;
  ListBuilder<String> get pictures =>
      _$this._pictures ??= new ListBuilder<String>();
  set pictures(ListBuilder<String> pictures) => _$this._pictures = pictures;

  PostBuilder();

  PostBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _uid = _$v.uid;
      _description = _$v.description;
      _createdAt = _$v.createdAt;
      _likes = _$v.likes;
      _pictures = _$v.pictures?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Post other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Post;
  }

  @override
  void update(void Function(PostBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Post build() {
    _$Post _$result;
    try {
      _$result = _$v ??
          new _$Post._(
              id: id,
              uid: uid,
              description: description,
              createdAt: createdAt,
              likes: likes,
              pictures: pictures.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'pictures';
        pictures.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Post', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
