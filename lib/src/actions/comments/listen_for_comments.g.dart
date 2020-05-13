// GENERATED CODE - DO NOT MODIFY BY HAND

part of listen_for_comments;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListenForComments extends ListenForComments {
  factory _$ListenForComments(
          [void Function(ListenForCommentsBuilder) updates]) =>
      (new ListenForCommentsBuilder()..update(updates)).build();

  _$ListenForComments._() : super._();

  @override
  ListenForComments rebuild(void Function(ListenForCommentsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListenForCommentsBuilder toBuilder() =>
      new ListenForCommentsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListenForComments;
  }

  @override
  int get hashCode {
    return 631907843;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('ListenForComments').toString();
  }
}

class ListenForCommentsBuilder
    implements Builder<ListenForComments, ListenForCommentsBuilder> {
  _$ListenForComments _$v;

  ListenForCommentsBuilder();

  @override
  void replace(ListenForComments other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ListenForComments;
  }

  @override
  void update(void Function(ListenForCommentsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ListenForComments build() {
    final _$result = _$v ?? new _$ListenForComments._();
    replace(_$result);
    return _$result;
  }
}

class _$StopListenForComments extends StopListenForComments {
  factory _$StopListenForComments(
          [void Function(StopListenForCommentsBuilder) updates]) =>
      (new StopListenForCommentsBuilder()..update(updates)).build();

  _$StopListenForComments._() : super._();

  @override
  StopListenForComments rebuild(
          void Function(StopListenForCommentsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StopListenForCommentsBuilder toBuilder() =>
      new StopListenForCommentsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StopListenForComments;
  }

  @override
  int get hashCode {
    return 764938150;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('StopListenForComments').toString();
  }
}

class StopListenForCommentsBuilder
    implements Builder<StopListenForComments, StopListenForCommentsBuilder> {
  _$StopListenForComments _$v;

  StopListenForCommentsBuilder();

  @override
  void replace(StopListenForComments other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$StopListenForComments;
  }

  @override
  void update(void Function(StopListenForCommentsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$StopListenForComments build() {
    final _$result = _$v ?? new _$StopListenForComments._();
    replace(_$result);
    return _$result;
  }
}

class _$OnCommentsEvent extends OnCommentsEvent {
  @override
  final BuiltList<Comment> comments;

  factory _$OnCommentsEvent([void Function(OnCommentsEventBuilder) updates]) =>
      (new OnCommentsEventBuilder()..update(updates)).build();

  _$OnCommentsEvent._({this.comments}) : super._() {
    if (comments == null) {
      throw new BuiltValueNullFieldError('OnCommentsEvent', 'comments');
    }
  }

  @override
  OnCommentsEvent rebuild(void Function(OnCommentsEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OnCommentsEventBuilder toBuilder() =>
      new OnCommentsEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OnCommentsEvent && comments == other.comments;
  }

  @override
  int get hashCode {
    return $jf($jc(0, comments.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OnCommentsEvent')
          ..add('comments', comments))
        .toString();
  }
}

class OnCommentsEventBuilder
    implements Builder<OnCommentsEvent, OnCommentsEventBuilder> {
  _$OnCommentsEvent _$v;

  ListBuilder<Comment> _comments;
  ListBuilder<Comment> get comments =>
      _$this._comments ??= new ListBuilder<Comment>();
  set comments(ListBuilder<Comment> comments) => _$this._comments = comments;

  OnCommentsEventBuilder();

  OnCommentsEventBuilder get _$this {
    if (_$v != null) {
      _comments = _$v.comments?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OnCommentsEvent other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$OnCommentsEvent;
  }

  @override
  void update(void Function(OnCommentsEventBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$OnCommentsEvent build() {
    _$OnCommentsEvent _$result;
    try {
      _$result = _$v ?? new _$OnCommentsEvent._(comments: comments.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'comments';
        comments.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'OnCommentsEvent', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$ListenForCommentsError extends ListenForCommentsError {
  @override
  final Object error;

  factory _$ListenForCommentsError(
          [void Function(ListenForCommentsErrorBuilder) updates]) =>
      (new ListenForCommentsErrorBuilder()..update(updates)).build();

  _$ListenForCommentsError._({this.error}) : super._() {
    if (error == null) {
      throw new BuiltValueNullFieldError('ListenForCommentsError', 'error');
    }
  }

  @override
  ListenForCommentsError rebuild(
          void Function(ListenForCommentsErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListenForCommentsErrorBuilder toBuilder() =>
      new ListenForCommentsErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListenForCommentsError && error == other.error;
  }

  @override
  int get hashCode {
    return $jf($jc(0, error.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ListenForCommentsError')
          ..add('error', error))
        .toString();
  }
}

class ListenForCommentsErrorBuilder
    implements Builder<ListenForCommentsError, ListenForCommentsErrorBuilder> {
  _$ListenForCommentsError _$v;

  Object _error;
  Object get error => _$this._error;
  set error(Object error) => _$this._error = error;

  ListenForCommentsErrorBuilder();

  ListenForCommentsErrorBuilder get _$this {
    if (_$v != null) {
      _error = _$v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListenForCommentsError other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ListenForCommentsError;
  }

  @override
  void update(void Function(ListenForCommentsErrorBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ListenForCommentsError build() {
    final _$result = _$v ?? new _$ListenForCommentsError._(error: error);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
