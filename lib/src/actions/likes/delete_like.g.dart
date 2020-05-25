// GENERATED CODE - DO NOT MODIFY BY HAND

part of delete_like;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteLike extends DeleteLike {
  @override
  final String likeId;
  @override
  final String parentId;
  @override
  final LikeType type;

  factory _$DeleteLike([void Function(DeleteLikeBuilder) updates]) =>
      (new DeleteLikeBuilder()..update(updates)).build();

  _$DeleteLike._({this.likeId, this.parentId, this.type}) : super._() {
    if (likeId == null) {
      throw new BuiltValueNullFieldError('DeleteLike', 'likeId');
    }
    if (parentId == null) {
      throw new BuiltValueNullFieldError('DeleteLike', 'parentId');
    }
    if (type == null) {
      throw new BuiltValueNullFieldError('DeleteLike', 'type');
    }
  }

  @override
  DeleteLike rebuild(void Function(DeleteLikeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteLikeBuilder toBuilder() => new DeleteLikeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteLike &&
        likeId == other.likeId &&
        parentId == other.parentId &&
        type == other.type;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, likeId.hashCode), parentId.hashCode), type.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DeleteLike')
          ..add('likeId', likeId)
          ..add('parentId', parentId)
          ..add('type', type))
        .toString();
  }
}

class DeleteLikeBuilder implements Builder<DeleteLike, DeleteLikeBuilder> {
  _$DeleteLike _$v;

  String _likeId;
  String get likeId => _$this._likeId;
  set likeId(String likeId) => _$this._likeId = likeId;

  String _parentId;
  String get parentId => _$this._parentId;
  set parentId(String parentId) => _$this._parentId = parentId;

  LikeType _type;
  LikeType get type => _$this._type;
  set type(LikeType type) => _$this._type = type;

  DeleteLikeBuilder();

  DeleteLikeBuilder get _$this {
    if (_$v != null) {
      _likeId = _$v.likeId;
      _parentId = _$v.parentId;
      _type = _$v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteLike other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$DeleteLike;
  }

  @override
  void update(void Function(DeleteLikeBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DeleteLike build() {
    final _$result = _$v ??
        new _$DeleteLike._(likeId: likeId, parentId: parentId, type: type);
    replace(_$result);
    return _$result;
  }
}

class _$DeleteLikeSuccessful extends DeleteLikeSuccessful {
  @override
  final String likeId;
  @override
  final String parentId;
  @override
  final LikeType type;

  factory _$DeleteLikeSuccessful(
          [void Function(DeleteLikeSuccessfulBuilder) updates]) =>
      (new DeleteLikeSuccessfulBuilder()..update(updates)).build();

  _$DeleteLikeSuccessful._({this.likeId, this.parentId, this.type})
      : super._() {
    if (likeId == null) {
      throw new BuiltValueNullFieldError('DeleteLikeSuccessful', 'likeId');
    }
    if (parentId == null) {
      throw new BuiltValueNullFieldError('DeleteLikeSuccessful', 'parentId');
    }
    if (type == null) {
      throw new BuiltValueNullFieldError('DeleteLikeSuccessful', 'type');
    }
  }

  @override
  DeleteLikeSuccessful rebuild(
          void Function(DeleteLikeSuccessfulBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteLikeSuccessfulBuilder toBuilder() =>
      new DeleteLikeSuccessfulBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteLikeSuccessful &&
        likeId == other.likeId &&
        parentId == other.parentId &&
        type == other.type;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, likeId.hashCode), parentId.hashCode), type.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DeleteLikeSuccessful')
          ..add('likeId', likeId)
          ..add('parentId', parentId)
          ..add('type', type))
        .toString();
  }
}

class DeleteLikeSuccessfulBuilder
    implements Builder<DeleteLikeSuccessful, DeleteLikeSuccessfulBuilder> {
  _$DeleteLikeSuccessful _$v;

  String _likeId;
  String get likeId => _$this._likeId;
  set likeId(String likeId) => _$this._likeId = likeId;

  String _parentId;
  String get parentId => _$this._parentId;
  set parentId(String parentId) => _$this._parentId = parentId;

  LikeType _type;
  LikeType get type => _$this._type;
  set type(LikeType type) => _$this._type = type;

  DeleteLikeSuccessfulBuilder();

  DeleteLikeSuccessfulBuilder get _$this {
    if (_$v != null) {
      _likeId = _$v.likeId;
      _parentId = _$v.parentId;
      _type = _$v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteLikeSuccessful other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$DeleteLikeSuccessful;
  }

  @override
  void update(void Function(DeleteLikeSuccessfulBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DeleteLikeSuccessful build() {
    final _$result = _$v ??
        new _$DeleteLikeSuccessful._(
            likeId: likeId, parentId: parentId, type: type);
    replace(_$result);
    return _$result;
  }
}

class _$DeleteLikeError extends DeleteLikeError {
  @override
  final Object error;

  factory _$DeleteLikeError([void Function(DeleteLikeErrorBuilder) updates]) =>
      (new DeleteLikeErrorBuilder()..update(updates)).build();

  _$DeleteLikeError._({this.error}) : super._() {
    if (error == null) {
      throw new BuiltValueNullFieldError('DeleteLikeError', 'error');
    }
  }

  @override
  DeleteLikeError rebuild(void Function(DeleteLikeErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteLikeErrorBuilder toBuilder() =>
      new DeleteLikeErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteLikeError && error == other.error;
  }

  @override
  int get hashCode {
    return $jf($jc(0, error.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DeleteLikeError')..add('error', error))
        .toString();
  }
}

class DeleteLikeErrorBuilder
    implements Builder<DeleteLikeError, DeleteLikeErrorBuilder> {
  _$DeleteLikeError _$v;

  Object _error;
  Object get error => _$this._error;
  set error(Object error) => _$this._error = error;

  DeleteLikeErrorBuilder();

  DeleteLikeErrorBuilder get _$this {
    if (_$v != null) {
      _error = _$v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteLikeError other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$DeleteLikeError;
  }

  @override
  void update(void Function(DeleteLikeErrorBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DeleteLikeError build() {
    final _$result = _$v ?? new _$DeleteLikeError._(error: error);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
