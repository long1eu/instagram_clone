// File created by
// Lung Razvan <long1eu>
// on 27/04/2020

class ReserveUsername {}

class ReserveUsernameSuccessful {
  const ReserveUsernameSuccessful(this.username);

  final String username;
}

class ReserveUsernameError {
  const ReserveUsernameError(this.error);

  final Object error;
}
