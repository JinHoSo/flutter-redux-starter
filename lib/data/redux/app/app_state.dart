import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_redux_starter/data/redux/jwt/jwt_state.dart';

part 'app_state.g.dart';

abstract class AppState implements Built<AppState, AppStateBuilder> {
  static Serializer<AppState> get serializer => _$appStateSerializer;

  JwtState get jwtState;
  
  factory AppState(){
    return _$AppState._(
      jwtState: JwtState()
    );
  }

  AppState._();
}


