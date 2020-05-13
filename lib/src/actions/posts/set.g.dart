// GENERATED CODE - DO NOT MODIFY BY HAND

part of set;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SetSelectedPost extends SetSelectedPost {
  @override
  final String postId;

  factory _$SetSelectedPost([void Function(SetSelectedPostBuilder) updates]) =>
      (new SetSelectedPostBuilder()..update(updates)).build();

  _$SetSelectedPost._({this.postId}) : super._() {
    if (postId == null) {
      throw new BuiltValueNullFieldError('SetSelectedPost', 'postId');
    }
  }

  @override
  SetSelectedPost rebuild(void Function(SetSelectedPostBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SetSelectedPostBuilder toBuilder() =>
      new SetSelectedPostBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SetSelectedPost && postId == other.postId;
  }

  @override
  int get hashCode {
    return $jf($jc(0, postId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SetSelectedPost')
          ..add('postId', postId))
        .toString();
  }
}

class SetSelectedPostBuilder
    implements Builder<SetSelectedPost, SetSelectedPostBuilder> {
  _$SetSelectedPost _$v;

  String _postId;
  String get postId => _$this._postId;
  set postId(String postId) => _$this._postId = postId;

  SetSelectedPostBuilder();

  SetSelectedPostBuilder get _$this {
    if (_$v != null) {
      _postId = _$v.postId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SetSelectedPost other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SetSelectedPost;
  }

  @override
  void update(void Function(SetSelectedPostBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SetSelectedPost build() {
    final _$result = _$v ?? new _$SetSelectedPost._(postId: postId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
