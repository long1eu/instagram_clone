// File created by
// Lung Razvan <long1eu>
// on 30/04/2020

abstract class AppAction {}

abstract class ErrorAction extends AppAction {
  Object get error;
}

typedef ActionResult = void Function(dynamic action);