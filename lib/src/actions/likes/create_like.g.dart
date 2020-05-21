// GENERATED CODE - DO NOT MODIFY BY HAND

part of create_like;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateLike extends CreateLike {
  @override
  final String parentId;
  @override
  final LikeType type;

  factory _$CreateLike([void Function(CreateLikeBuilder) updates]) =>
      (new CreateLikeBuilder()..update(updates)).build();

  _$CreateLike._({this.parentId, this.type}) : super._() {
    if (parentId == null) {
      throw new BuiltValueNullFieldError('CreateLike', 'parentId');
    }
    if (type == null) {
      throw new BuiltValueNullFieldError('CreateLike', 'type');
    }
  }

  @override
  CreateLike rebuild(void Function(CreateLikeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateLikeBuilder toBuilder() => new CreateLikeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateLike &&
        parentId == other.parentId &&
        type == other.type;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, parentId.hashCode), type.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CreateLike')
          ..add('parentId', parentId)
          ..add('type', type))
        .toString();
  }
}

class CreateLikeBuilder implements Builder<CreateLike, CreateLikeBuilder> {
  _$CreateLike _$v;

  String _parentId;
  String get parentId => _$this._parentId;
  set parentId(String parentId) => _$this._parentId = parentId;

  LikeType _type;
  LikeType get type => _$this._type;
  set type(LikeType type) => _$this._type = type;

  CreateLikeBuilder();

  CreateLikeBuilder get _$this {
    if (_$v != null) {
      _parentId = _$v.parentId;
      _type = _$v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateLike other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CreateLike;
  }

  @override
  void update(void Function(CreateLikeBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CreateLike build() {
    final _$result = _$v ?? new _$CreateLike._(parentId: parentId, type: type);
    replace(_$result);
    return _$result;
  }
}

class _$CreateLikeSuccessful extends CreateLikeSuccessful {
  @override
  final Like like;

  factory _$CreateLikeSuccessful(
          [void Function(CreateLikeSuccessfulBuilder) updates]) =>
      (new CreateLikeSuccessfulBuilder()..update(updates)).build();

  _$CreateLikeSuccessful._({this.like}) : super._() {
    if (like == null) {
      throw new BuiltValueNullFieldError('CreateLikeSuccessful', 'like');
    }
  }

  @override
  CreateLikeSuccessful rebuild(
          void Function(CreateLikeSuccessfulBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateLikeSuccessfulBuilder toBuilder() =>
      new CreateLikeSuccessfulBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateLikeSuccessful && like == other.like;
  }

  @override
  int get hashCode {
    return $jf($jc(0, like.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CreateLikeSuccessful')
          ..add('like', like))
        .toString();
  }
}

class CreateLikeSuccessfulBuilder
    implements Builder<CreateLikeSuccessful, CreateLikeSuccessfulBuilder> {
  _$CreateLikeSuccessful _$v;

  LikeBuilder _like;
  LikeBuilder get like => _$this._like ??= new LikeBuilder();
  set like(LikeBuilder like) => _$this._like = like;

  CreateLikeSuccessfulBuilder();

  CreateLikeSuccessfulBuilder get _$this {
    if (_$v != null) {
      _like = _$v.like?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateLikeSuccessful other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CreateLikeSuccessful;
  }

  @override
  void update(void Function(CreateLikeSuccessfulBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CreateLikeSuccessful build() {
    _$CreateLikeSuccessful _$result;
    try {
      _$result = _$v ?? new _$CreateLikeSuccessful._(like: like.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'like';
        like.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CreateLikeSuccessful', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$CreateLikeError extends CreateLikeError {
  @override
  final Object error;

  factory _$CreateLikeError([void Function(CreateLikeErrorBuilder) updates]) =>
      (new CreateLikeErrorBuilder()..update(updates)).build();

  _$CreateLikeError._({this.error}) : super._() {
    if (error == null) {
      throw new BuiltValueNullFieldError('CreateLikeError', 'error');
    }
  }

  @override
  CreateLikeError rebuild(void Function(CreateLikeErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateLikeErrorBuilder toBuilder() =>
      new CreateLikeErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateLikeError && error == other.error;
  }

  @override
  int get hashCode {
    return $jf($jc(0, error.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CreateLikeError')..add('error', error))
        .toString();
  }
}

class CreateLikeErrorBuilder
    implements Builder<CreateLikeError, CreateLikeErrorBuilder> {
  _$CreateLikeError _$v;

  Object _error;
  Object get error => _$this._error;
  set error(Object error) => _$this._error = error;

  CreateLikeErrorBuilder();

  CreateLikeErrorBuilder get _$this {
    if (_$v != null) {
      _error = _$v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateLikeError other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CreateLikeError;
  }

  @override
  void update(void Function(CreateLikeErrorBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CreateLikeError build() {
    final _$result = _$v ?? new _$CreateLikeError._(error: error);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
