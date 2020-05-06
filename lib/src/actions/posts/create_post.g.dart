// GENERATED CODE - DO NOT MODIFY BY HAND

part of create_post;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreatePost extends CreatePost {
  @override
  final String description;
  @override
  final BuiltList<String> pictures;
  @override
  final ActionResult result;

  factory _$CreatePost([void Function(CreatePostBuilder) updates]) =>
      (new CreatePostBuilder()..update(updates)).build();

  _$CreatePost._({this.description, this.pictures, this.result}) : super._() {
    if (description == null) {
      throw new BuiltValueNullFieldError('CreatePost', 'description');
    }
    if (pictures == null) {
      throw new BuiltValueNullFieldError('CreatePost', 'pictures');
    }
    if (result == null) {
      throw new BuiltValueNullFieldError('CreatePost', 'result');
    }
  }

  @override
  CreatePost rebuild(void Function(CreatePostBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreatePostBuilder toBuilder() => new CreatePostBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is CreatePost &&
        description == other.description &&
        pictures == other.pictures &&
        result == _$dynamicOther.result;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, description.hashCode), pictures.hashCode), result.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CreatePost')
          ..add('description', description)
          ..add('pictures', pictures)
          ..add('result', result))
        .toString();
  }
}

class CreatePostBuilder implements Builder<CreatePost, CreatePostBuilder> {
  _$CreatePost _$v;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  ListBuilder<String> _pictures;
  ListBuilder<String> get pictures =>
      _$this._pictures ??= new ListBuilder<String>();
  set pictures(ListBuilder<String> pictures) => _$this._pictures = pictures;

  ActionResult _result;
  ActionResult get result => _$this._result;
  set result(ActionResult result) => _$this._result = result;

  CreatePostBuilder();

  CreatePostBuilder get _$this {
    if (_$v != null) {
      _description = _$v.description;
      _pictures = _$v.pictures?.toBuilder();
      _result = _$v.result;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreatePost other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CreatePost;
  }

  @override
  void update(void Function(CreatePostBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CreatePost build() {
    _$CreatePost _$result;
    try {
      _$result = _$v ??
          new _$CreatePost._(
              description: description,
              pictures: pictures.build(),
              result: result);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'pictures';
        pictures.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CreatePost', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$CreatePostSuccessful extends CreatePostSuccessful {
  @override
  final Post post;

  factory _$CreatePostSuccessful(
          [void Function(CreatePostSuccessfulBuilder) updates]) =>
      (new CreatePostSuccessfulBuilder()..update(updates)).build();

  _$CreatePostSuccessful._({this.post}) : super._() {
    if (post == null) {
      throw new BuiltValueNullFieldError('CreatePostSuccessful', 'post');
    }
  }

  @override
  CreatePostSuccessful rebuild(
          void Function(CreatePostSuccessfulBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreatePostSuccessfulBuilder toBuilder() =>
      new CreatePostSuccessfulBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreatePostSuccessful && post == other.post;
  }

  @override
  int get hashCode {
    return $jf($jc(0, post.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CreatePostSuccessful')
          ..add('post', post))
        .toString();
  }
}

class CreatePostSuccessfulBuilder
    implements Builder<CreatePostSuccessful, CreatePostSuccessfulBuilder> {
  _$CreatePostSuccessful _$v;

  PostBuilder _post;
  PostBuilder get post => _$this._post ??= new PostBuilder();
  set post(PostBuilder post) => _$this._post = post;

  CreatePostSuccessfulBuilder();

  CreatePostSuccessfulBuilder get _$this {
    if (_$v != null) {
      _post = _$v.post?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreatePostSuccessful other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CreatePostSuccessful;
  }

  @override
  void update(void Function(CreatePostSuccessfulBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CreatePostSuccessful build() {
    _$CreatePostSuccessful _$result;
    try {
      _$result = _$v ?? new _$CreatePostSuccessful._(post: post.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'post';
        post.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CreatePostSuccessful', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$CreatePostError extends CreatePostError {
  @override
  final Object error;

  factory _$CreatePostError([void Function(CreatePostErrorBuilder) updates]) =>
      (new CreatePostErrorBuilder()..update(updates)).build();

  _$CreatePostError._({this.error}) : super._() {
    if (error == null) {
      throw new BuiltValueNullFieldError('CreatePostError', 'error');
    }
  }

  @override
  CreatePostError rebuild(void Function(CreatePostErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreatePostErrorBuilder toBuilder() =>
      new CreatePostErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreatePostError && error == other.error;
  }

  @override
  int get hashCode {
    return $jf($jc(0, error.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CreatePostError')..add('error', error))
        .toString();
  }
}

class CreatePostErrorBuilder
    implements Builder<CreatePostError, CreatePostErrorBuilder> {
  _$CreatePostError _$v;

  Object _error;
  Object get error => _$this._error;
  set error(Object error) => _$this._error = error;

  CreatePostErrorBuilder();

  CreatePostErrorBuilder get _$this {
    if (_$v != null) {
      _error = _$v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreatePostError other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CreatePostError;
  }

  @override
  void update(void Function(CreatePostErrorBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CreatePostError build() {
    final _$result = _$v ?? new _$CreatePostError._(error: error);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
