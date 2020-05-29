// GENERATED CODE - DO NOT MODIFY BY HAND

part of stop_following;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StopFollowing extends StopFollowing {
  @override
  final String followingUid;

  factory _$StopFollowing([void Function(StopFollowingBuilder) updates]) =>
      (new StopFollowingBuilder()..update(updates)).build();

  _$StopFollowing._({this.followingUid}) : super._() {
    if (followingUid == null) {
      throw new BuiltValueNullFieldError('StopFollowing', 'followingUid');
    }
  }

  @override
  StopFollowing rebuild(void Function(StopFollowingBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StopFollowingBuilder toBuilder() => new StopFollowingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StopFollowing && followingUid == other.followingUid;
  }

  @override
  int get hashCode {
    return $jf($jc(0, followingUid.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('StopFollowing')
          ..add('followingUid', followingUid))
        .toString();
  }
}

class StopFollowingBuilder
    implements Builder<StopFollowing, StopFollowingBuilder> {
  _$StopFollowing _$v;

  String _followingUid;
  String get followingUid => _$this._followingUid;
  set followingUid(String followingUid) => _$this._followingUid = followingUid;

  StopFollowingBuilder();

  StopFollowingBuilder get _$this {
    if (_$v != null) {
      _followingUid = _$v.followingUid;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StopFollowing other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$StopFollowing;
  }

  @override
  void update(void Function(StopFollowingBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$StopFollowing build() {
    final _$result = _$v ?? new _$StopFollowing._(followingUid: followingUid);
    replace(_$result);
    return _$result;
  }
}

class _$StopFollowingSuccessful extends StopFollowingSuccessful {
  @override
  final String followingUid;

  factory _$StopFollowingSuccessful(
          [void Function(StopFollowingSuccessfulBuilder) updates]) =>
      (new StopFollowingSuccessfulBuilder()..update(updates)).build();

  _$StopFollowingSuccessful._({this.followingUid}) : super._() {
    if (followingUid == null) {
      throw new BuiltValueNullFieldError(
          'StopFollowingSuccessful', 'followingUid');
    }
  }

  @override
  StopFollowingSuccessful rebuild(
          void Function(StopFollowingSuccessfulBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StopFollowingSuccessfulBuilder toBuilder() =>
      new StopFollowingSuccessfulBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StopFollowingSuccessful &&
        followingUid == other.followingUid;
  }

  @override
  int get hashCode {
    return $jf($jc(0, followingUid.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('StopFollowingSuccessful')
          ..add('followingUid', followingUid))
        .toString();
  }
}

class StopFollowingSuccessfulBuilder
    implements
        Builder<StopFollowingSuccessful, StopFollowingSuccessfulBuilder> {
  _$StopFollowingSuccessful _$v;

  String _followingUid;
  String get followingUid => _$this._followingUid;
  set followingUid(String followingUid) => _$this._followingUid = followingUid;

  StopFollowingSuccessfulBuilder();

  StopFollowingSuccessfulBuilder get _$this {
    if (_$v != null) {
      _followingUid = _$v.followingUid;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StopFollowingSuccessful other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$StopFollowingSuccessful;
  }

  @override
  void update(void Function(StopFollowingSuccessfulBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$StopFollowingSuccessful build() {
    final _$result =
        _$v ?? new _$StopFollowingSuccessful._(followingUid: followingUid);
    replace(_$result);
    return _$result;
  }
}

class _$StopFollowingError extends StopFollowingError {
  @override
  final Object error;

  factory _$StopFollowingError(
          [void Function(StopFollowingErrorBuilder) updates]) =>
      (new StopFollowingErrorBuilder()..update(updates)).build();

  _$StopFollowingError._({this.error}) : super._() {
    if (error == null) {
      throw new BuiltValueNullFieldError('StopFollowingError', 'error');
    }
  }

  @override
  StopFollowingError rebuild(
          void Function(StopFollowingErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StopFollowingErrorBuilder toBuilder() =>
      new StopFollowingErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StopFollowingError && error == other.error;
  }

  @override
  int get hashCode {
    return $jf($jc(0, error.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('StopFollowingError')
          ..add('error', error))
        .toString();
  }
}

class StopFollowingErrorBuilder
    implements Builder<StopFollowingError, StopFollowingErrorBuilder> {
  _$StopFollowingError _$v;

  Object _error;
  Object get error => _$this._error;
  set error(Object error) => _$this._error = error;

  StopFollowingErrorBuilder();

  StopFollowingErrorBuilder get _$this {
    if (_$v != null) {
      _error = _$v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StopFollowingError other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$StopFollowingError;
  }

  @override
  void update(void Function(StopFollowingErrorBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$StopFollowingError build() {
    final _$result = _$v ?? new _$StopFollowingError._(error: error);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
