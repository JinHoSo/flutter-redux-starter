import 'package:flutter_redux_starter/data/redux/app/app_reducer.dart';
import 'package:flutter_redux_starter/data/redux/app/app_state.dart';
import 'package:flutter_redux_starter/data/util/built_value_serializer.dart';
import 'package:redux/redux.dart';
import 'package:redux_logging/redux_logging.dart';
import 'package:redux_persist/redux_persist.dart';
import 'package:redux_persist_flutter/redux_persist_flutter.dart';
import 'package:redux_thunk/redux_thunk.dart';

Future<Store<AppState>> createStore() async {
  // Create Persistor
  final persistor = Persistor<AppState>(
      storage: FlutterStorage(), // Or use other engines
      serializer: BuiltValueSerializer<AppState>(AppState.serializer, ['jwtState', 'LoginState']));

  // Load initial state
  final initialState = await persistor.load();

  return Store(
    appReducer,
    initialState: initialState ?? AppState(),
    middleware: [
      new LoggingMiddleware.printer(),
      persistor.createMiddleware(),
      thunkMiddleware
    ],
  );
}

