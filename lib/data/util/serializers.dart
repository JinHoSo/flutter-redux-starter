import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:flutter_redux_starter/data/model/jwt/jwt_token.dart';
import 'package:flutter_redux_starter/data/redux/app/app_state.dart';
import 'package:flutter_redux_starter/data/redux/jwt/jwt_state.dart';

part 'serializers.g.dart';

@SerializersFor(const [
  AppState,
  JwtToken,
  JwtState,
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
