// GENERATED CODE - DO NOT MODIFY BY HAND

part of create_comment;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateComment extends CreateComment {
  @override
  final String text;
  @override
  final ActionResult result;

  factory _$CreateComment([void Function(CreateCommentBuilder) updates]) =>
      (new CreateCommentBuilder()..update(updates)).build();

  _$CreateComment._({this.text, this.result}) : super._() {
    if (text == null) {
      throw new BuiltValueNullFieldError('CreateComment', 'text');
    }
    if (result == null) {
      throw new BuiltValueNullFieldError('CreateComment', 'result');
    }
  }

  @override
  CreateComment rebuild(void Function(CreateCommentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateCommentBuilder toBuilder() => new CreateCommentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is CreateComment &&
        text == other.text &&
        result == _$dynamicOther.result;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, text.hashCode), result.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CreateComment')
          ..add('text', text)
          ..add('result', result))
        .toString();
  }
}

class CreateCommentBuilder
    implements Builder<CreateComment, CreateCommentBuilder> {
  _$CreateComment _$v;

  String _text;
  String get text => _$this._text;
  set text(String text) => _$this._text = text;

  ActionResult _result;
  ActionResult get result => _$this._result;
  set result(ActionResult result) => _$this._result = result;

  CreateCommentBuilder();

  CreateCommentBuilder get _$this {
    if (_$v != null) {
      _text = _$v.text;
      _result = _$v.result;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateComment other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CreateComment;
  }

  @override
  void update(void Function(CreateCommentBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CreateComment build() {
    final _$result = _$v ?? new _$CreateComment._(text: text, result: result);
    replace(_$result);
    return _$result;
  }
}

class _$CreateCommentSuccessful extends CreateCommentSuccessful {
  @override
  final Comment comment;

  factory _$CreateCommentSuccessful(
          [void Function(CreateCommentSuccessfulBuilder) updates]) =>
      (new CreateCommentSuccessfulBuilder()..update(updates)).build();

  _$CreateCommentSuccessful._({this.comment}) : super._() {
    if (comment == null) {
      throw new BuiltValueNullFieldError('CreateCommentSuccessful', 'comment');
    }
  }

  @override
  CreateCommentSuccessful rebuild(
          void Function(CreateCommentSuccessfulBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateCommentSuccessfulBuilder toBuilder() =>
      new CreateCommentSuccessfulBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateCommentSuccessful && comment == other.comment;
  }

  @override
  int get hashCode {
    return $jf($jc(0, comment.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CreateCommentSuccessful')
          ..add('comment', comment))
        .toString();
  }
}

class CreateCommentSuccessfulBuilder
    implements
        Builder<CreateCommentSuccessful, CreateCommentSuccessfulBuilder> {
  _$CreateCommentSuccessful _$v;

  CommentBuilder _comment;
  CommentBuilder get comment => _$this._comment ??= new CommentBuilder();
  set comment(CommentBuilder comment) => _$this._comment = comment;

  CreateCommentSuccessfulBuilder();

  CreateCommentSuccessfulBuilder get _$this {
    if (_$v != null) {
      _comment = _$v.comment?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateCommentSuccessful other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CreateCommentSuccessful;
  }

  @override
  void update(void Function(CreateCommentSuccessfulBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CreateCommentSuccessful build() {
    _$CreateCommentSuccessful _$result;
    try {
      _$result =
          _$v ?? new _$CreateCommentSuccessful._(comment: comment.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'comment';
        comment.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CreateCommentSuccessful', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$CreateCommentError extends CreateCommentError {
  @override
  final Object error;

  factory _$CreateCommentError(
          [void Function(CreateCommentErrorBuilder) updates]) =>
      (new CreateCommentErrorBuilder()..update(updates)).build();

  _$CreateCommentError._({this.error}) : super._() {
    if (error == null) {
      throw new BuiltValueNullFieldError('CreateCommentError', 'error');
    }
  }

  @override
  CreateCommentError rebuild(
          void Function(CreateCommentErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateCommentErrorBuilder toBuilder() =>
      new CreateCommentErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateCommentError && error == other.error;
  }

  @override
  int get hashCode {
    return $jf($jc(0, error.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CreateCommentError')
          ..add('error', error))
        .toString();
  }
}

class CreateCommentErrorBuilder
    implements Builder<CreateCommentError, CreateCommentErrorBuilder> {
  _$CreateCommentError _$v;

  Object _error;
  Object get error => _$this._error;
  set error(Object error) => _$this._error = error;

  CreateCommentErrorBuilder();

  CreateCommentErrorBuilder get _$this {
    if (_$v != null) {
      _error = _$v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateCommentError other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CreateCommentError;
  }

  @override
  void update(void Function(CreateCommentErrorBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CreateCommentError build() {
    final _$result = _$v ?? new _$CreateCommentError._(error: error);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
