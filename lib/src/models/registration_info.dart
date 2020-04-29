// File created by
// Lung Razvan <long1eu>
// on 24/04/2020

class RegistrationInfo {
  const RegistrationInfo({
    this.email,
    this.phone,
    this.verificationId,
    this.smsCode,
    this.displayName,
    this.password,
    this.birthDate,
    this.username,
    this.savePassword = false,
  });

  final String email;
  final String phone;
  final String verificationId;
  final String smsCode;
  final String displayName;
  final String password;
  final DateTime birthDate;
  final String username;
  final bool savePassword;

  RegistrationInfo copyWith({
    String email,
    String phone,
    String verificationId,
    String smsCode,
    String displayName,
    String password,
    DateTime birthDate,
    String username,
    bool savePassword,
  }) {
    return RegistrationInfo(
      email: email ?? this.email,
      phone: phone ?? this.phone,
      verificationId: verificationId ?? this.verificationId,
      smsCode: smsCode ?? this.smsCode,
      displayName: displayName ?? this.displayName,
      password: password ?? this.password,
      birthDate: birthDate ?? this.birthDate,
      username: username ?? this.username,
      savePassword: savePassword ?? this.savePassword,
    );
  }

  @override
  String toString() => 'RegistrationInfo{email: $email, phone: $phone, verificationId: $verificationId, smsCode: $smsCode, displayName: $displayName, password: $password, birthDate: $birthDate, username: $username, savePassword: $savePassword}';
}
