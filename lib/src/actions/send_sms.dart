// File created by
// Lung Razvan <long1eu>
// on 29/04/2020

import 'package:instagram_clone/src/actions/reset_password.dart';

class SendSms {
  const SendSms(this.result);

  final ActionResult result;
}

class SendSmsSuccessful {
  const SendSmsSuccessful(this.verificationId);

  final String verificationId;
}

class SendSmsError {
  const SendSmsError(this.error);

  final Object error;
}
