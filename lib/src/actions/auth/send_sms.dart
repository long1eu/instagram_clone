// File created by
// Lung Razvan <long1eu>
// on 29/04/2020

library send_sms;

import 'package:built_value/built_value.dart';
import 'package:instagram_clone/src/actions/actions.dart';

part 'send_sms.g.dart';

abstract class SendSms //
    implements
        Built<SendSms, SendSmsBuilder>,
        AppAction //
{
  factory SendSms(ActionResult result) {
    return _$SendSms((SendSmsBuilder b) {
      b.result = result;
    });
  }

  SendSms._();

  ActionResult get result;
}

abstract class SendSmsSuccessful //
    implements
        Built<SendSmsSuccessful, SendSmsSuccessfulBuilder>,
        AppAction //
{
  factory SendSmsSuccessful(String verificationId) {
    return _$SendSmsSuccessful((SendSmsSuccessfulBuilder b) {
      b.verificationId = verificationId;
    });
  }

  SendSmsSuccessful._();

  String get verificationId;
}

abstract class SendSmsError //
    implements
        Built<SendSmsError, SendSmsErrorBuilder>,
        ErrorAction //
{
  factory SendSmsError(Object error) {
    return _$SendSmsError((SendSmsErrorBuilder b) => b.error = error);
  }

  SendSmsError._();

  @override
  Object get error;
}
