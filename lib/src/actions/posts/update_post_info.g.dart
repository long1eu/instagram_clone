// GENERATED CODE - DO NOT MODIFY BY HAND

part of update_post_info;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdatePostInfo extends UpdatePostInfo {
  @override
  final SavePostInfo info;

  factory _$UpdatePostInfo([void Function(UpdatePostInfoBuilder) updates]) =>
      (new UpdatePostInfoBuilder()..update(updates)).build();

  _$UpdatePostInfo._({this.info}) : super._() {
    if (info == null) {
      throw new BuiltValueNullFieldError('UpdatePostInfo', 'info');
    }
  }

  @override
  UpdatePostInfo rebuild(void Function(UpdatePostInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdatePostInfoBuilder toBuilder() =>
      new UpdatePostInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdatePostInfo && info == other.info;
  }

  @override
  int get hashCode {
    return $jf($jc(0, info.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UpdatePostInfo')..add('info', info))
        .toString();
  }
}

class UpdatePostInfoBuilder
    implements Builder<UpdatePostInfo, UpdatePostInfoBuilder> {
  _$UpdatePostInfo _$v;

  SavePostInfoBuilder _info;
  SavePostInfoBuilder get info => _$this._info ??= new SavePostInfoBuilder();
  set info(SavePostInfoBuilder info) => _$this._info = info;

  UpdatePostInfoBuilder();

  UpdatePostInfoBuilder get _$this {
    if (_$v != null) {
      _info = _$v.info?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdatePostInfo other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$UpdatePostInfo;
  }

  @override
  void update(void Function(UpdatePostInfoBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UpdatePostInfo build() {
    _$UpdatePostInfo _$result;
    try {
      _$result = _$v ?? new _$UpdatePostInfo._(info: info.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'info';
        info.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'UpdatePostInfo', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
