// GENERATED CODE - DO NOT MODIFY BY HAND

part of registration_info;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RegistrationInfo> _$registrationInfoSerializer =
    new _$RegistrationInfoSerializer();

class _$RegistrationInfoSerializer
    implements StructuredSerializer<RegistrationInfo> {
  @override
  final Iterable<Type> types = const [RegistrationInfo, _$RegistrationInfo];
  @override
  final String wireName = 'RegistrationInfo';

  @override
  Iterable<Object> serialize(Serializers serializers, RegistrationInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.email != null) {
      result
        ..add('email')
        ..add(serializers.serialize(object.email,
            specifiedType: const FullType(String)));
    }
    if (object.phone != null) {
      result
        ..add('phone')
        ..add(serializers.serialize(object.phone,
            specifiedType: const FullType(String)));
    }
    if (object.verificationId != null) {
      result
        ..add('verificationId')
        ..add(serializers.serialize(object.verificationId,
            specifiedType: const FullType(String)));
    }
    if (object.smsCode != null) {
      result
        ..add('smsCode')
        ..add(serializers.serialize(object.smsCode,
            specifiedType: const FullType(String)));
    }
    if (object.displayName != null) {
      result
        ..add('displayName')
        ..add(serializers.serialize(object.displayName,
            specifiedType: const FullType(String)));
    }
    if (object.password != null) {
      result
        ..add('password')
        ..add(serializers.serialize(object.password,
            specifiedType: const FullType(String)));
    }
    if (object.birthDate != null) {
      result
        ..add('birthDate')
        ..add(serializers.serialize(object.birthDate,
            specifiedType: const FullType(DateTime)));
    }
    if (object.username != null) {
      result
        ..add('username')
        ..add(serializers.serialize(object.username,
            specifiedType: const FullType(String)));
    }
    if (object.savePassword != null) {
      result
        ..add('savePassword')
        ..add(serializers.serialize(object.savePassword,
            specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  RegistrationInfo deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RegistrationInfoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'phone':
          result.phone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'verificationId':
          result.verificationId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'smsCode':
          result.smsCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'displayName':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'birthDate':
          result.birthDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'savePassword':
          result.savePassword = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$RegistrationInfo extends RegistrationInfo {
  @override
  final String email;
  @override
  final String phone;
  @override
  final String verificationId;
  @override
  final String smsCode;
  @override
  final String displayName;
  @override
  final String password;
  @override
  final DateTime birthDate;
  @override
  final String username;
  @override
  final bool savePassword;

  factory _$RegistrationInfo(
          [void Function(RegistrationInfoBuilder) updates]) =>
      (new RegistrationInfoBuilder()..update(updates)).build();

  _$RegistrationInfo._(
      {this.email,
      this.phone,
      this.verificationId,
      this.smsCode,
      this.displayName,
      this.password,
      this.birthDate,
      this.username,
      this.savePassword})
      : super._();

  @override
  RegistrationInfo rebuild(void Function(RegistrationInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RegistrationInfoBuilder toBuilder() =>
      new RegistrationInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RegistrationInfo &&
        email == other.email &&
        phone == other.phone &&
        verificationId == other.verificationId &&
        smsCode == other.smsCode &&
        displayName == other.displayName &&
        password == other.password &&
        birthDate == other.birthDate &&
        username == other.username &&
        savePassword == other.savePassword;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, email.hashCode), phone.hashCode),
                                verificationId.hashCode),
                            smsCode.hashCode),
                        displayName.hashCode),
                    password.hashCode),
                birthDate.hashCode),
            username.hashCode),
        savePassword.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RegistrationInfo')
          ..add('email', email)
          ..add('phone', phone)
          ..add('verificationId', verificationId)
          ..add('smsCode', smsCode)
          ..add('displayName', displayName)
          ..add('password', password)
          ..add('birthDate', birthDate)
          ..add('username', username)
          ..add('savePassword', savePassword))
        .toString();
  }
}

class RegistrationInfoBuilder
    implements Builder<RegistrationInfo, RegistrationInfoBuilder> {
  _$RegistrationInfo _$v;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _phone;
  String get phone => _$this._phone;
  set phone(String phone) => _$this._phone = phone;

  String _verificationId;
  String get verificationId => _$this._verificationId;
  set verificationId(String verificationId) =>
      _$this._verificationId = verificationId;

  String _smsCode;
  String get smsCode => _$this._smsCode;
  set smsCode(String smsCode) => _$this._smsCode = smsCode;

  String _displayName;
  String get displayName => _$this._displayName;
  set displayName(String displayName) => _$this._displayName = displayName;

  String _password;
  String get password => _$this._password;
  set password(String password) => _$this._password = password;

  DateTime _birthDate;
  DateTime get birthDate => _$this._birthDate;
  set birthDate(DateTime birthDate) => _$this._birthDate = birthDate;

  String _username;
  String get username => _$this._username;
  set username(String username) => _$this._username = username;

  bool _savePassword;
  bool get savePassword => _$this._savePassword;
  set savePassword(bool savePassword) => _$this._savePassword = savePassword;

  RegistrationInfoBuilder();

  RegistrationInfoBuilder get _$this {
    if (_$v != null) {
      _email = _$v.email;
      _phone = _$v.phone;
      _verificationId = _$v.verificationId;
      _smsCode = _$v.smsCode;
      _displayName = _$v.displayName;
      _password = _$v.password;
      _birthDate = _$v.birthDate;
      _username = _$v.username;
      _savePassword = _$v.savePassword;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RegistrationInfo other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$RegistrationInfo;
  }

  @override
  void update(void Function(RegistrationInfoBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RegistrationInfo build() {
    final _$result = _$v ??
        new _$RegistrationInfo._(
            email: email,
            phone: phone,
            verificationId: verificationId,
            smsCode: smsCode,
            displayName: displayName,
            password: password,
            birthDate: birthDate,
            username: username,
            savePassword: savePassword);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
