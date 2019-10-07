import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'jwt_token.g.dart';

abstract class JwtToken implements Built<JwtToken, JwtTokenBuilder> {
  static Serializer<JwtToken> get serializer => _$jwtTokenSerializer;

  @nullable
  @BuiltValueField(wireName: 'access_token')
  String get accessToken;

  @nullable
  @BuiltValueField(wireName: 'refresh_token')
  String get refreshToken;

  @nullable
  @BuiltValueField(wireName: 'expires_in')
  int get expiresIn;
  
  JwtToken._();

  // factory JwtToken() {
  //   return _$JwtToken._(
  //     accessToken: null, 
  //     refreshToken: null,
  //     expiresIn: 0,
  //   );
  // }

  factory JwtToken([void Function(JwtTokenBuilder) updates]) = _$JwtToken;
}
