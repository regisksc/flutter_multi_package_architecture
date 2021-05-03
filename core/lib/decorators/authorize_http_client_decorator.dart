import 'package:core/data/http/http.dart';
import 'package:core/data/storage/storage.dart';
import 'package:meta/meta.dart';

class AuthorizeHttpClientDecorator implements HttpClient {
  final Load fetchSecureCacheStorage;
  final Delete deleteSecureCacheStorage;
  final HttpClient decoratee;

  AuthorizeHttpClientDecorator({
    @required this.fetchSecureCacheStorage,
    @required this.deleteSecureCacheStorage,
    @required this.decoratee,
  });

  Future<dynamic> request({
    @required String url,
    @required String method,
    Map body,
    Map headers,
  }) async {
    try {
      final token = await fetchSecureCacheStorage.load('token');
      final authorizedHeaders = headers ?? {}
        ..addAll({'authorization': token});
      return await decoratee.request(url: url, method: method, body: body, headers: authorizedHeaders);
    } catch (error) {
      if (error is HttpError && error != HttpError.forbidden) {
        rethrow;
      } else {
        await deleteSecureCacheStorage.delete('token');
        throw HttpError.forbidden;
      }
    }
  }
}
