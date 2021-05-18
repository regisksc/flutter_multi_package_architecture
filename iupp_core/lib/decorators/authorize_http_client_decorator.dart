import 'package:iupp_core/error/http_failures.dart';

import '../core.dart';

class AuthorizeHttpClientDecorator implements HttpClient {
  AuthorizeHttpClientDecorator({
    required this.secureLocalDatasource,
    required this.decoratee,
  });

  final SecureLocalDatasource secureLocalDatasource;
  final HttpClient decoratee;

  Future<dynamic> request({
    required String method,
    required String url,
    Map<String, dynamic>? body,
    Map<String, dynamic>? query,
    Map<String, String>? headers,
  }) async {
    try {
      final token = await secureLocalDatasource.load('token');
      final authorizedHeaders = headers ?? {}
        ..addAll({'authorization': token});
      return await decoratee.request(
        url: url,
        method: method,
        body: body,
        headers: authorizedHeaders,
      );
    } on HttpFailure catch (error) {
      if (error is! ForbiddenFailure) {
        rethrow;
      } else {
        await secureLocalDatasource.delete('token');
        throw const ForbiddenFailure();
      }
    }
  }
}
