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
    final opt = Options(
      headers: headers,
      validateStatus: (status) => status != null && status >= 200 && status < 300,
    );
    try {
      late Response response;
      final availableVerbs = ['get', 'post', 'delete', 'put', 'patch'];
      final verb = method.toLowerCase();
      if (!availableVerbs.contains(verb)) throw const InvalidMethodFailure();
      if (verb == 'get') response = await client.get(url, queryParameters: query, options: opt);
      if (verb == 'post') response = await client.post(url, data: body, options: opt);
      if (verb == 'delete') response = await client.delete(url, queryParameters: query, options: opt, data: body);
      if (verb == 'put') response = await client.put(url, queryParameters: query, options: opt, data: body);
      if (verb == 'patch') response = await client.patch(url, queryParameters: query, options: opt, data: body);
      return _handledResponse(response);
    } on DioError catch (err) {
      // ignore: avoid_print
      print('HTTP REQUEST ERROR: $err');
      late int? code;
      if (err.response != null) code = err.response!.statusCode;
      if (code == 400) throw const BadRequestFailure();
      if (code == 401) throw const UnauthorizedFailure();
      if (code == 403) throw const ForbiddenFailure();
      if (code == 404) throw const NotFoundFailure();
      throw const NotFoundFailure();
    }
  }

  HttpResponse _handledResponse(Response response) {
    final responseData = response.data as Map<String, dynamic>;
    String message = '';
    if (responseData.containsKey('message')) message = response.data['message'].toString();
    return HttpResponse(
      code: response.statusCode!,
      data: responseData,
      message: message,
    );
  }
}
