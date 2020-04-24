// File created by
// Lung Razvan <long1eu>
// on 16/04/2020

typedef ActionResult = void Function(dynamic action);

class ResetPassword {
  const ResetPassword(this.email, this.result);

  final String email;

  final ActionResult result;
}

class ResetPasswordSuccessful {}

class ResetPasswordError {
  const ResetPasswordError(this.error);

  final Object error;
}
