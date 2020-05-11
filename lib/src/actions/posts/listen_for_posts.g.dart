// GENERATED CODE - DO NOT MODIFY BY HAND

part of listen_for_posts;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListenForPosts extends ListenForPosts {
  factory _$ListenForPosts([void Function(ListenForPostsBuilder) updates]) =>
      (new ListenForPostsBuilder()..update(updates)).build();

  _$ListenForPosts._() : super._();

  @override
  ListenForPosts rebuild(void Function(ListenForPostsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListenForPostsBuilder toBuilder() =>
      new ListenForPostsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListenForPosts;
  }

  @override
  int get hashCode {
    return 165401351;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('ListenForPosts').toString();
  }
}

class ListenForPostsBuilder
    implements Builder<ListenForPosts, ListenForPostsBuilder> {
  _$ListenForPosts _$v;

  ListenForPostsBuilder();

  @override
  void replace(ListenForPosts other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ListenForPosts;
  }

  @override
  void update(void Function(ListenForPostsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ListenForPosts build() {
    final _$result = _$v ?? new _$ListenForPosts._();
    replace(_$result);
    return _$result;
  }
}

class _$StopListeningForPosts extends StopListeningForPosts {
  factory _$StopListeningForPosts(
          [void Function(StopListeningForPostsBuilder) updates]) =>
      (new StopListeningForPostsBuilder()..update(updates)).build();

  _$StopListeningForPosts._() : super._();

  @override
  StopListeningForPosts rebuild(
          void Function(StopListeningForPostsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StopListeningForPostsBuilder toBuilder() =>
      new StopListeningForPostsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StopListeningForPosts;
  }

  @override
  int get hashCode {
    return 1016933419;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('StopListeningForPosts').toString();
  }
}

class StopListeningForPostsBuilder
    implements Builder<StopListeningForPosts, StopListeningForPostsBuilder> {
  _$StopListeningForPosts _$v;

  StopListeningForPostsBuilder();

  @override
  void replace(StopListeningForPosts other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$StopListeningForPosts;
  }

  @override
  void update(void Function(StopListeningForPostsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$StopListeningForPosts build() {
    final _$result = _$v ?? new _$StopListeningForPosts._();
    replace(_$result);
    return _$result;
  }
}

class _$OnPostsEvent extends OnPostsEvent {
  @override
  final BuiltList<Post> posts;

  factory _$OnPostsEvent([void Function(OnPostsEventBuilder) updates]) =>
      (new OnPostsEventBuilder()..update(updates)).build();

  _$OnPostsEvent._({this.posts}) : super._() {
    if (posts == null) {
      throw new BuiltValueNullFieldError('OnPostsEvent', 'posts');
    }
  }

  @override
  OnPostsEvent rebuild(void Function(OnPostsEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OnPostsEventBuilder toBuilder() => new OnPostsEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OnPostsEvent && posts == other.posts;
  }

  @override
  int get hashCode {
    return $jf($jc(0, posts.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OnPostsEvent')..add('posts', posts))
        .toString();
  }
}

class OnPostsEventBuilder
    implements Builder<OnPostsEvent, OnPostsEventBuilder> {
  _$OnPostsEvent _$v;

  ListBuilder<Post> _posts;
  ListBuilder<Post> get posts => _$this._posts ??= new ListBuilder<Post>();
  set posts(ListBuilder<Post> posts) => _$this._posts = posts;

  OnPostsEventBuilder();

  OnPostsEventBuilder get _$this {
    if (_$v != null) {
      _posts = _$v.posts?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OnPostsEvent other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$OnPostsEvent;
  }

  @override
  void update(void Function(OnPostsEventBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$OnPostsEvent build() {
    _$OnPostsEvent _$result;
    try {
      _$result = _$v ?? new _$OnPostsEvent._(posts: posts.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'posts';
        posts.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'OnPostsEvent', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$ListenForPostsError extends ListenForPostsError {
  @override
  final Object error;

  factory _$ListenForPostsError(
          [void Function(ListenForPostsErrorBuilder) updates]) =>
      (new ListenForPostsErrorBuilder()..update(updates)).build();

  _$ListenForPostsError._({this.error}) : super._() {
    if (error == null) {
      throw new BuiltValueNullFieldError('ListenForPostsError', 'error');
    }
  }

  @override
  ListenForPostsError rebuild(
          void Function(ListenForPostsErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListenForPostsErrorBuilder toBuilder() =>
      new ListenForPostsErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListenForPostsError && error == other.error;
  }

  @override
  int get hashCode {
    return $jf($jc(0, error.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ListenForPostsError')
          ..add('error', error))
        .toString();
  }
}

class ListenForPostsErrorBuilder
    implements Builder<ListenForPostsError, ListenForPostsErrorBuilder> {
  _$ListenForPostsError _$v;

  Object _error;
  Object get error => _$this._error;
  set error(Object error) => _$this._error = error;

  ListenForPostsErrorBuilder();

  ListenForPostsErrorBuilder get _$this {
    if (_$v != null) {
      _error = _$v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListenForPostsError other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ListenForPostsError;
  }

  @override
  void update(void Function(ListenForPostsErrorBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ListenForPostsError build() {
    final _$result = _$v ?? new _$ListenForPostsError._(error: error);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
