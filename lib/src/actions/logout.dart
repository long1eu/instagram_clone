// File created by
// Lung Razvan <long1eu>
// on 16/04/2020


library logout;
import 'package:built_value/built_value.dart';
import 'package:instagram_clone/src/actions/actions.dart';

part 'logout.g.dart';

abstract class Logout //
    implements
        Built<Logout, LogoutBuilder>,
        AppAction //
{
  factory Logout([void Function(LogoutBuilder b) updates]) = _$Logout;

  Logout._();
}

abstract class LogoutSuccessful //
    implements
        Built<LogoutSuccessful, LogoutSuccessfulBuilder>,
        AppAction //
{
  factory LogoutSuccessful([void Function(LogoutSuccessfulBuilder b) updates]) = _$LogoutSuccessful;

  LogoutSuccessful._();
}

abstract class LogoutError //
    implements
        Built<LogoutError, LogoutErrorBuilder>,
        ErrorAction //
{
  factory LogoutError(Object error) {
    return _$LogoutError((LogoutErrorBuilder b) => b.error = error);
  }

  LogoutError._();

  @override
  Object get error;
}
