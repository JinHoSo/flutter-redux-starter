import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_redux_starter/data/api/auth/jwt.dart';
import 'package:flutter_redux_starter/data/redux/app/app_state.dart';
import 'package:flutter_redux_starter/data/redux/jwt/jwt_state.dart';

class SignInForm extends StatefulWidget {
  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final _formKey = GlobalKey<FormState>();

  String _email;
  bool _isEmailDirty = false;
  String _password;
  bool _isPasswordDirty = false;

  String validateEmail(String value) {
    if (value.isEmpty) {
      return 'Please enter mail';
    }

    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value))
      return 'Enter valid email';
    else
      return null;
  }

  Widget build(BuildContext context) {
    return Container(
        child: StoreConnector<AppState, JwtState>(
            distinct: true,
            converter: (store) => store.state.jwtState,
            builder: (context, jwtState) {
              if (jwtState.token == null) {
                return Form(
                    key: _formKey,
                    child: Column(children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 20.0),
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          autofocus: true,
                          validator: validateEmail,
                          autovalidate: _isEmailDirty,
                          onChanged: (value) {
                            setState(() {
                              _isEmailDirty = true;
                            });
                          },
                          onSaved: (value) {
                            setState(() {
                              _email = value;
                            });
                          },
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              helperText: 'required',
                              labelText: 'Email'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 20.0),
                        child: TextFormField(
                          obscureText: true,
                          validator: (String value) {
                            if (value.isEmpty || value.length < 5) {
                              return 'Password should be more than 5 characters';
                            }

                            return null;
                          },
                          autovalidate: _isPasswordDirty,
                          onSaved: (value) {
                            setState(() {
                              _password = value;
                            });
                          },
                          onChanged: (value) {
                            setState(() {
                              _isPasswordDirty = true;
                            });
                          },
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              helperText: 'required',
                              labelText: 'Password'),
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 20.0),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                StoreConnector<AppState, dynamic>(
                                  converter: (store) => () => store.dispatch(
                                      signIn(
                                          email: _email, password: _password)),
                                  builder: (context, signIn) {
                                    return FlatButton(
                                      textTheme: ButtonTextTheme.primary,
                                      child: Text('Sign In'),
                                      onPressed: () {
                                        if (_formKey.currentState.validate()) {
                                          _formKey.currentState.save();
                                          signIn();
                                        }
                                      },
                                    );
                                  },
                                )
                              ],
                            ),
                          ))
                    ]));
              } else {
                return StoreConnector<AppState, dynamic>(
                  converter: (store) => () => store
                      .dispatch(signOut()),
                  builder: (context, signOut) {
                    return FlatButton(
                      textTheme: ButtonTextTheme.primary,
                      child: Text('Sign out'),
                      onPressed: () {
                          signOut();
                      },
                    );
                  },
                );
              }
            }));
  }
}
