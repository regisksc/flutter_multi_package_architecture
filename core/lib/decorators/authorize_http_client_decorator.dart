import 'package:core/data/datasources/local/local.dart';
import 'package:core/data/http/http.dart';
import 'package:core/data/storage/storage.dart';
import 'package:meta/meta.dart';

class AuthorizeHttpClientDecorator implements HttpClient {
  final SecureLocalDatasource secureLocalDatasource;
  final HttpClient decoratee;

  AuthorizeHttpClientDecorator({
    required this.secureLocalDatasource,
    required this.decoratee,
  });

  Future<dynamic> request({
    required String url,
    required String method,
    Map? body,
    Map? headers,
  }) async {
    try {
      final token = await secureLocalDatasource.load('token');
      final authorizedHeaders = headers ?? {}
        ..addAll({'authorization': token});
      return await decoratee.request(url: url, method: method, body: body, headers: authorizedHeaders);
    } catch (error) {
      if (error is HttpError && error != HttpError.forbidden) {
        rethrow;
      } else {
        await secureLocalDatasource.delete('token');
        throw HttpError.forbidden;
      }
    }
  }
}
