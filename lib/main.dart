import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_redux_starter/data/redux/app/app_state.dart';
import 'package:flutter_redux_starter/data/redux/app/app_store.dart';
import 'package:flutter_redux_starter/screen/auth/sign_in_screen.dart';
import 'package:redux/redux.dart';

void main() async {
  Store<AppState> store = await createStore();
  runApp(MyApp(store));
}

class MyApp extends StatelessWidget {
  final Store<AppState> store;

  MyApp(this.store);

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
        store: store,
        child: MaterialApp(
          title: 'Flutter Redux Demo',
          home: SignInScreen(),
        ));
  }
}