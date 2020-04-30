// GENERATED CODE - DO NOT MODIFY BY HAND

part of update_registration_info;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateRegistrationInfo extends UpdateRegistrationInfo {
  @override
  final RegistrationInfo info;

  factory _$UpdateRegistrationInfo(
          [void Function(UpdateRegistrationInfoBuilder) updates]) =>
      (new UpdateRegistrationInfoBuilder()..update(updates)).build();

  _$UpdateRegistrationInfo._({this.info}) : super._() {
    if (info == null) {
      throw new BuiltValueNullFieldError('UpdateRegistrationInfo', 'info');
    }
  }

  @override
  UpdateRegistrationInfo rebuild(
          void Function(UpdateRegistrationInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateRegistrationInfoBuilder toBuilder() =>
      new UpdateRegistrationInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateRegistrationInfo && info == other.info;
  }

  @override
  int get hashCode {
    return $jf($jc(0, info.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UpdateRegistrationInfo')
          ..add('info', info))
        .toString();
  }
}

class UpdateRegistrationInfoBuilder
    implements Builder<UpdateRegistrationInfo, UpdateRegistrationInfoBuilder> {
  _$UpdateRegistrationInfo _$v;

  RegistrationInfoBuilder _info;
  RegistrationInfoBuilder get info =>
      _$this._info ??= new RegistrationInfoBuilder();
  set info(RegistrationInfoBuilder info) => _$this._info = info;

  UpdateRegistrationInfoBuilder();

  UpdateRegistrationInfoBuilder get _$this {
    if (_$v != null) {
      _info = _$v.info?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateRegistrationInfo other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$UpdateRegistrationInfo;
  }

  @override
  void update(void Function(UpdateRegistrationInfoBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UpdateRegistrationInfo build() {
    _$UpdateRegistrationInfo _$result;
    try {
      _$result = _$v ?? new _$UpdateRegistrationInfo._(info: info.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'info';
        info.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'UpdateRegistrationInfo', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
