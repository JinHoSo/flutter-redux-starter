import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_redux_starter/data/model/jwt/jwt_token.dart';

part 'jwt_state.g.dart';

abstract class JwtState implements Built<JwtState, JwtStateBuilder> {
  static Serializer<JwtState> get serializer => _$jwtStateSerializer;

  @nullable
  JwtToken get token;

  @nullable
  String get error;

  JwtState._();

  factory JwtState() {
    return _$JwtState._(
      token: null, 
      error: null,
    );
  }
}
