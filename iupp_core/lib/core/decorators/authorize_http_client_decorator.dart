import 'package:iupp_core/core/error/http_failure/forbidden_failure.dart';

import '../../core.dart';

class AuthorizeHttpClientDecorator implements HttpClient {
  AuthorizeHttpClientDecorator({
    required HttpClient decoratee,
    required LocalStorage localStorage,
  })  : _decoratee = decoratee,
        _localStorage = localStorage;

  final HttpClient _decoratee;
  final LocalStorage _localStorage;

  Future<dynamic> request({
    required String method,
    required String url,
    Map<String, dynamic>? body,
    Map<String, dynamic>? queryParameters,
    Map<String, String>? headers,
  }) async {
    try {
      final token = await _localStorage.getValue('token');
      final authorizedHeaders = headers ?? {}
        ..addAll({'authorization': token});

      return await _decoratee.request(
        url: url,
        method: method,
        body: body,
        headers: authorizedHeaders,
      );
    } on HttpFailure catch (error) {
      if (error is ForbiddenFailure) {
        await _localStorage.deleteValue('token');
      }
      rethrow;
    }
  }
}
