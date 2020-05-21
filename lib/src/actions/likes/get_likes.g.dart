// GENERATED CODE - DO NOT MODIFY BY HAND

part of get_likes;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetLikes extends GetLikes {
  @override
  final String parentId;

  factory _$GetLikes([void Function(GetLikesBuilder) updates]) =>
      (new GetLikesBuilder()..update(updates)).build();

  _$GetLikes._({this.parentId}) : super._() {
    if (parentId == null) {
      throw new BuiltValueNullFieldError('GetLikes', 'parentId');
    }
  }

  @override
  GetLikes rebuild(void Function(GetLikesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetLikesBuilder toBuilder() => new GetLikesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetLikes && parentId == other.parentId;
  }

  @override
  int get hashCode {
    return $jf($jc(0, parentId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GetLikes')..add('parentId', parentId))
        .toString();
  }
}

class GetLikesBuilder implements Builder<GetLikes, GetLikesBuilder> {
  _$GetLikes _$v;

  String _parentId;
  String get parentId => _$this._parentId;
  set parentId(String parentId) => _$this._parentId = parentId;

  GetLikesBuilder();

  GetLikesBuilder get _$this {
    if (_$v != null) {
      _parentId = _$v.parentId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetLikes other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GetLikes;
  }

  @override
  void update(void Function(GetLikesBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetLikes build() {
    final _$result = _$v ?? new _$GetLikes._(parentId: parentId);
    replace(_$result);
    return _$result;
  }
}

class _$GetLikesSuccessful extends GetLikesSuccessful {
  @override
  final BuiltList<Like> likes;
  @override
  final String parentId;

  factory _$GetLikesSuccessful(
          [void Function(GetLikesSuccessfulBuilder) updates]) =>
      (new GetLikesSuccessfulBuilder()..update(updates)).build();

  _$GetLikesSuccessful._({this.likes, this.parentId}) : super._() {
    if (likes == null) {
      throw new BuiltValueNullFieldError('GetLikesSuccessful', 'likes');
    }
    if (parentId == null) {
      throw new BuiltValueNullFieldError('GetLikesSuccessful', 'parentId');
    }
  }

  @override
  GetLikesSuccessful rebuild(
          void Function(GetLikesSuccessfulBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetLikesSuccessfulBuilder toBuilder() =>
      new GetLikesSuccessfulBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetLikesSuccessful &&
        likes == other.likes &&
        parentId == other.parentId;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, likes.hashCode), parentId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GetLikesSuccessful')
          ..add('likes', likes)
          ..add('parentId', parentId))
        .toString();
  }
}

class GetLikesSuccessfulBuilder
    implements Builder<GetLikesSuccessful, GetLikesSuccessfulBuilder> {
  _$GetLikesSuccessful _$v;

  ListBuilder<Like> _likes;
  ListBuilder<Like> get likes => _$this._likes ??= new ListBuilder<Like>();
  set likes(ListBuilder<Like> likes) => _$this._likes = likes;

  String _parentId;
  String get parentId => _$this._parentId;
  set parentId(String parentId) => _$this._parentId = parentId;

  GetLikesSuccessfulBuilder();

  GetLikesSuccessfulBuilder get _$this {
    if (_$v != null) {
      _likes = _$v.likes?.toBuilder();
      _parentId = _$v.parentId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetLikesSuccessful other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GetLikesSuccessful;
  }

  @override
  void update(void Function(GetLikesSuccessfulBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetLikesSuccessful build() {
    _$GetLikesSuccessful _$result;
    try {
      _$result = _$v ??
          new _$GetLikesSuccessful._(likes: likes.build(), parentId: parentId);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'likes';
        likes.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GetLikesSuccessful', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GetLikesError extends GetLikesError {
  @override
  final Object error;

  factory _$GetLikesError([void Function(GetLikesErrorBuilder) updates]) =>
      (new GetLikesErrorBuilder()..update(updates)).build();

  _$GetLikesError._({this.error}) : super._() {
    if (error == null) {
      throw new BuiltValueNullFieldError('GetLikesError', 'error');
    }
  }

  @override
  GetLikesError rebuild(void Function(GetLikesErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetLikesErrorBuilder toBuilder() => new GetLikesErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetLikesError && error == other.error;
  }

  @override
  int get hashCode {
    return $jf($jc(0, error.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GetLikesError')..add('error', error))
        .toString();
  }
}

class GetLikesErrorBuilder
    implements Builder<GetLikesError, GetLikesErrorBuilder> {
  _$GetLikesError _$v;

  Object _error;
  Object get error => _$this._error;
  set error(Object error) => _$this._error = error;

  GetLikesErrorBuilder();

  GetLikesErrorBuilder get _$this {
    if (_$v != null) {
      _error = _$v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetLikesError other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GetLikesError;
  }

  @override
  void update(void Function(GetLikesErrorBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetLikesError build() {
    final _$result = _$v ?? new _$GetLikesError._(error: error);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
