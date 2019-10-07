import 'package:flutter_redux_starter/data/redux/jwt/jwt_reducer.dart';

import 'app_state.dart';

AppState appReducer(AppState state, dynamic action){
  return state.rebuild((builder)=> builder
    ..jwtState.replace(jwtReducer(state.jwtState, action))
  );
}