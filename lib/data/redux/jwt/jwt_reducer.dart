import 'package:flutter_redux_starter/data/redux/jwt/jwt_action.dart';
import 'package:flutter_redux_starter/data/redux/jwt/jwt_state.dart';
import 'package:redux/redux.dart';


final jwtReducer = combineReducers<JwtState>([
  TypedReducer<JwtState, SaveJwtAction>(saveJwt),
  TypedReducer<JwtState, DeleteJwtAction>(deleteJwt),
]);

JwtState saveJwt(JwtState jwtState, SaveJwtAction action) {
  return jwtState.rebuild((builder)=> builder
    ..token.replace(action.token)
    ..error = action.error
  );
}

JwtState deleteJwt(JwtState jwtState, DeleteJwtAction action){
  return jwtState.rebuild((builder)=> builder
    ..token = null
    ..error = null
  );
}