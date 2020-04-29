// File created by
// Lung Razvan <long1eu>
// on 29/04/2020

class SendSms {
  const SendSms();
}

class SendSmsSuccessful {
  const SendSmsSuccessful(this.verificationId);

  final String verificationId;
}

class SendSmsError {
  const SendSmsError(this.error);

  final Object error;
}
