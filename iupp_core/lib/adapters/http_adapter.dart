import 'package:dio/dio.dart';
import 'package:iupp_core/data/http/http_response.dart';
import 'package:iupp_core/error/http_failures.dart';

import '../core.dart';

class HttpAdapter implements HttpClient {
  HttpAdapter(this.client);
  final Dio client;

  @override
  Future request({
    required String method,
    required String url,
    Map<String, dynamic>? body,
    Map<String, dynamic>? query,
    Map<String, String>? headers,
  }) async {
    final requestOptions = Options(
      headers: headers,
      validateStatus: (status) => status != null && status >= 200 && status < 300,
    );
    try {
      switch (method.toLowerCase()) {
        case 'get':
          final response = await client.get(url, queryParameters: query, options: requestOptions);
          final responseData = response.data as Map<String, dynamic>;
          String message = '';
          if (responseData.containsKey('message')) message = response.data['message'].toString();
          return HttpResponse(
            code: response.statusCode!,
            data: responseData,
            message: message,
          );
        case 'post':
          break;
        case 'delete':
          break;
        case 'put':
          break;
        case 'patch':
          break;
        default:
          throw const InvalidMethodFailure();
      }
    } on DioError catch (err) {
      print(err);
    }
  }
}
