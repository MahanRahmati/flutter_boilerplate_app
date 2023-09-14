import 'package:app_constants/app_constants.dart';
import 'package:app_models/app_models.dart';
import 'package:arna_logger/arna_logger.dart';
import 'package:arna_web_service/arna_web_service.dart';

class LoginAPIController extends ArnaWebServiceController {
  Future<User?> login({
    required final String username,
    required final String password,
    required final void Function(dynamic e) errorHandler,
  }) async {
    try {
      final Response<dynamic>? response = await webService.post(
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

      final dynamic body = ResponseUtils().getUTF8Body(response);

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

  Future<List<User>?> getUsers({
    required final void Function(dynamic e) errorHandler,
  }) async {
    try {
      final Response<dynamic>? response = await webService.get(
        Uri.parse(Endpoints.login),
      );

      final dynamic body = ResponseUtils().getUTF8Body(response);

      if (body is! String) {
        throw Exception('Body is not string! Body:$body');
      }

      final dynamic rawData = jsonDecode(body);

      if (rawData is! List<dynamic>) {
        throw Exception(
          'rawData is not List<dynamic>! rawData:$rawData',
        );
      }

      final List<User> items = <User>[];
      for (final dynamic item in rawData) {
        if (item is Map<String, dynamic>) {
          final User user = User.fromJson(item);
          items.add(user);
        }
      }

      return items;
    } catch (e) {
      arnaLogger(title: 'getUsers', data: e);
      errorHandler(e);
    }
    return null;
  }
}
