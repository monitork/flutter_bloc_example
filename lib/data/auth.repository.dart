import 'package:flutter_bloc/core/helpers/connection.helper.dart';
import 'package:flutter_bloc/data/sources/network/auth.service.dart';
import 'package:flutter_bloc/src/models/response.model.dart';

class AuthRepository {
  AuthService api = AuthService();

  Future<ResponseModel> login(String login, String senha) async {
    ResponseModel response = ResponseModel();

    final hasConnection = await ConnectionHelper.hasConnection();

    if (hasConnection) {
      response = await this.api.login(login, senha);
    } else {
      response.message = "Device offline";
    }

    return response;
  }
}
