import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_redux_starter/component/auth/sign_in_form.dart';

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SignInForm()
          ],
        ),
      ),
    );
  }
}