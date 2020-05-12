// GENERATED CODE - DO NOT MODIFY BY HAND

part of comment;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Comment> _$commentSerializer = new _$CommentSerializer();

class _$CommentSerializer implements StructuredSerializer<Comment> {
  @override
  final Iterable<Type> types = const [Comment, _$Comment];
  @override
  final String wireName = 'Comment';

  @override
  Iterable<Object> serialize(Serializers serializers, Comment object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'postId',
      serializers.serialize(object.postId,
          specifiedType: const FullType(String)),
      'uid',
      serializers.serialize(object.uid, specifiedType: const FullType(String)),
      'text',
      serializers.serialize(object.text, specifiedType: const FullType(String)),
      'createdAt',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(DateTime)),
    ];

    return result;
  }

  @override
  Comment deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CommentBuilder();

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
        case 'postId':
          result.postId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'text':
          result.text = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
      }
    }

    return result.build();
  }
}

class _$Comment extends Comment {
  @override
  final String id;
  @override
  final String postId;
  @override
  final String uid;
  @override
  final String text;
  @override
  final DateTime createdAt;

  factory _$Comment([void Function(CommentBuilder) updates]) =>
      (new CommentBuilder()..update(updates)).build();

  _$Comment._({this.id, this.postId, this.uid, this.text, this.createdAt})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('Comment', 'id');
    }
    if (postId == null) {
      throw new BuiltValueNullFieldError('Comment', 'postId');
    }
    if (uid == null) {
      throw new BuiltValueNullFieldError('Comment', 'uid');
    }
    if (text == null) {
      throw new BuiltValueNullFieldError('Comment', 'text');
    }
    if (createdAt == null) {
      throw new BuiltValueNullFieldError('Comment', 'createdAt');
    }
  }

  @override
  Comment rebuild(void Function(CommentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CommentBuilder toBuilder() => new CommentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Comment &&
        id == other.id &&
        postId == other.postId &&
        uid == other.uid &&
        text == other.text &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, id.hashCode), postId.hashCode), uid.hashCode),
            text.hashCode),
        createdAt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Comment')
          ..add('id', id)
          ..add('postId', postId)
          ..add('uid', uid)
          ..add('text', text)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class CommentBuilder implements Builder<Comment, CommentBuilder> {
  _$Comment _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _postId;
  String get postId => _$this._postId;
  set postId(String postId) => _$this._postId = postId;

  String _uid;
  String get uid => _$this._uid;
  set uid(String uid) => _$this._uid = uid;

  String _text;
  String get text => _$this._text;
  set text(String text) => _$this._text = text;

  DateTime _createdAt;
  DateTime get createdAt => _$this._createdAt;
  set createdAt(DateTime createdAt) => _$this._createdAt = createdAt;

  CommentBuilder();

  CommentBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _postId = _$v.postId;
      _uid = _$v.uid;
      _text = _$v.text;
      _createdAt = _$v.createdAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Comment other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Comment;
  }

  @override
  void update(void Function(CommentBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Comment build() {
    final _$result = _$v ??
        new _$Comment._(
            id: id, postId: postId, uid: uid, text: text, createdAt: createdAt);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
