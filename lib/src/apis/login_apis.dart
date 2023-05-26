import 'dart:convert' show jsonDecode;

import 'package:arna_logger/arna_logger.dart';
import 'package:arna_response_validation/arna_response_validation.dart';
import 'package:arna_web_service/arna_web_service.dart';

import '/src/constants/endpoints.dart';
import '/src/models/user.dart';

class LoginAPIController extends ArnaWebServiceController {
  Future<User?> login({
    required final String username,
    required final String password,
    required final void Function(dynamic e) errorHandler,
  }) async {
    try {
      final Response? response = await webService.post(
        Uri.parse(Endpoints.login),
        headers: <String, String>{
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
        body: <String, dynamic>{
          'username': username,
          'password': password,
        },
      );

      final dynamic body = ArnaResponseValidation().getUTF8Body(response);

      if (body is! String) {
        throw Exception('Body is not string! Body:$body');
      }

      final dynamic rawData = jsonDecode(body);

      if (rawData is! Map<String, dynamic>) {
        throw Exception(
          'rawData is not Map<String, dynamic>! rawData:$rawData',
        );
      }

      return User.fromJson(rawData);
    } catch (e) {
      arnaLogger(title: 'Login', data: e);
      errorHandler(e);
    }
    return null;
  }
}
