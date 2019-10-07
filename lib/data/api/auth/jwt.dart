
import 'package:flutter_redux_starter/data/model/jwt/jwt_token.dart';
import 'package:flutter_redux_starter/data/redux/app/app_state.dart';
import 'package:flutter_redux_starter/data/redux/jwt/jwt_action.dart';
import 'package:flutter_redux_starter/data/util/serializers.dart';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';

ThunkAction<AppState> signIn({String email, String password}) {
  return (Store<AppState> store) async {
      var token = serializers.deserializeWith(JwtToken.serializer, {'access_token':'this is access_token', 'refresh_token':'this is refresh token','expires_in':5});
      store.dispatch(SaveJwtAction(token: token, error: token != null ? token.accessToken : 'no token'));
  };
}

ThunkAction<AppState> signOut() {
  return (Store<AppState> store) async {
      store.dispatch(DeleteJwtAction());
  };
}