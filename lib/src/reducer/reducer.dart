// File created by
// Lung Razvan <long1eu>
// on 15/04/2020

import 'package:instagram_clone/src/actions/actions.dart';
import 'package:instagram_clone/src/models/app_state.dart';
import 'package:instagram_clone/src/reducer/auth_reducer.dart';
import 'package:instagram_clone/src/reducer/post_reducer.dart';
import 'package:redux/redux.dart';

AppState reducer(AppState state, dynamic action) {
  final AppState result = _reducer(state, action);
  if (action is ErrorAction) {
    final dynamic error = action.error;
    try {
      print('error: $error');
      print('stackTrace: ${error.stackTrace}');
    } catch (_) {}
  }
  print(action);
  return result;
}

Reducer<AppState> _reducer = combineReducers<AppState>(<Reducer<AppState>>[
  authReducer,
  postReducer,
]);
