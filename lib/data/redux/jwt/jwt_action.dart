import 'package:flutter_redux_starter/data/model/jwt/jwt_token.dart';

class SaveJwtAction{
  final JwtToken token;
  final String error;

  SaveJwtAction({this.token, this.error});
}

class DeleteJwtAction{
  DeleteJwtAction();
}