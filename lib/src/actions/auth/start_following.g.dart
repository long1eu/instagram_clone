// GENERATED CODE - DO NOT MODIFY BY HAND

part of start_following;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StartFollowing extends StartFollowing {
  @override
  final String followingUid;

  factory _$StartFollowing([void Function(StartFollowingBuilder) updates]) =>
      (new StartFollowingBuilder()..update(updates)).build();

  _$StartFollowing._({this.followingUid}) : super._() {
    if (followingUid == null) {
      throw new BuiltValueNullFieldError('StartFollowing', 'followingUid');
    }
  }

  @override
  StartFollowing rebuild(void Function(StartFollowingBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StartFollowingBuilder toBuilder() =>
      new StartFollowingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StartFollowing && followingUid == other.followingUid;
  }

  @override
  int get hashCode {
    return $jf($jc(0, followingUid.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('StartFollowing')
          ..add('followingUid', followingUid))
        .toString();
  }
}

class StartFollowingBuilder
    implements Builder<StartFollowing, StartFollowingBuilder> {
  _$StartFollowing _$v;

  String _followingUid;
  String get followingUid => _$this._followingUid;
  set followingUid(String followingUid) => _$this._followingUid = followingUid;

  StartFollowingBuilder();

  StartFollowingBuilder get _$this {
    if (_$v != null) {
      _followingUid = _$v.followingUid;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StartFollowing other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$StartFollowing;
  }

  @override
  void update(void Function(StartFollowingBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$StartFollowing build() {
    final _$result = _$v ?? new _$StartFollowing._(followingUid: followingUid);
    replace(_$result);
    return _$result;
  }
}

class _$StartFollowingSuccessful extends StartFollowingSuccessful {
  @override
  final String followingUid;

  factory _$StartFollowingSuccessful(
          [void Function(StartFollowingSuccessfulBuilder) updates]) =>
      (new StartFollowingSuccessfulBuilder()..update(updates)).build();

  _$StartFollowingSuccessful._({this.followingUid}) : super._() {
    if (followingUid == null) {
      throw new BuiltValueNullFieldError(
          'StartFollowingSuccessful', 'followingUid');
    }
  }

  @override
  StartFollowingSuccessful rebuild(
          void Function(StartFollowingSuccessfulBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StartFollowingSuccessfulBuilder toBuilder() =>
      new StartFollowingSuccessfulBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StartFollowingSuccessful &&
        followingUid == other.followingUid;
  }

  @override
  int get hashCode {
    return $jf($jc(0, followingUid.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('StartFollowingSuccessful')
          ..add('followingUid', followingUid))
        .toString();
  }
}

class StartFollowingSuccessfulBuilder
    implements
        Builder<StartFollowingSuccessful, StartFollowingSuccessfulBuilder> {
  _$StartFollowingSuccessful _$v;

  String _followingUid;
  String get followingUid => _$this._followingUid;
  set followingUid(String followingUid) => _$this._followingUid = followingUid;

  StartFollowingSuccessfulBuilder();

  StartFollowingSuccessfulBuilder get _$this {
    if (_$v != null) {
      _followingUid = _$v.followingUid;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StartFollowingSuccessful other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$StartFollowingSuccessful;
  }

  @override
  void update(void Function(StartFollowingSuccessfulBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$StartFollowingSuccessful build() {
    final _$result =
        _$v ?? new _$StartFollowingSuccessful._(followingUid: followingUid);
    replace(_$result);
    return _$result;
  }
}

class _$StartFollowingError extends StartFollowingError {
  @override
  final Object error;

  factory _$StartFollowingError(
          [void Function(StartFollowingErrorBuilder) updates]) =>
      (new StartFollowingErrorBuilder()..update(updates)).build();

  _$StartFollowingError._({this.error}) : super._() {
    if (error == null) {
      throw new BuiltValueNullFieldError('StartFollowingError', 'error');
    }
  }

  @override
  StartFollowingError rebuild(
          void Function(StartFollowingErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StartFollowingErrorBuilder toBuilder() =>
      new StartFollowingErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StartFollowingError && error == other.error;
  }

  @override
  int get hashCode {
    return $jf($jc(0, error.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('StartFollowingError')
          ..add('error', error))
        .toString();
  }
}

class StartFollowingErrorBuilder
    implements Builder<StartFollowingError, StartFollowingErrorBuilder> {
  _$StartFollowingError _$v;

  Object _error;
  Object get error => _$this._error;
  set error(Object error) => _$this._error = error;

  StartFollowingErrorBuilder();

  StartFollowingErrorBuilder get _$this {
    if (_$v != null) {
      _error = _$v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StartFollowingError other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$StartFollowingError;
  }

  @override
  void update(void Function(StartFollowingErrorBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$StartFollowingError build() {
    final _$result = _$v ?? new _$StartFollowingError._(error: error);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
