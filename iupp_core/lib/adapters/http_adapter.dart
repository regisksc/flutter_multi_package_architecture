import 'package:dio/dio.dart';
import 'package:iupp_core/data/http/http_response.dart';
import 'package:iupp_core/error/http_failures.dart';

import '../core.dart';

class HttpAdapter implements HttpClient {
  HttpAdapter(this.client);
  final Dio client;

  late String _method;
  late String _url;
  late Map<String, dynamic>? _body;
  late Map<String, dynamic>? _query;

  @override
  Future request({
    required String method,
    required String url,
    Map<String, dynamic>? body,
    Map<String, dynamic>? query,
    Map<String, String>? headers,
  }) async {
    _method = method.toLowerCase();
    _url = url;
    _body = body;
    _query = query;

    final opt = _configureRequestOptions(headers);
    try {
      final Response response = await _fetchResponse(opt);
      final code = response.statusCode;
      final isSuccessCode = code != null && code >= 200 && code <= 204;
      return isSuccessCode ? _handleSuccess(response) : _throwHttpFailure(response);
    } on DioError catch (err) {
      if (err.response != null) _handleError(err.response!);
    }
  }

  Options _configureRequestOptions(Map<String, String>? headers) {
    final defaultHeaders = {'content-type': 'application/json', 'accept': 'application/json'};
    return Options(headers: defaultHeaders..addAll(headers ?? {}));
  }

  void _throwHttpFailure(Response response) {
    final requestPath = Uri(path: _url, queryParameters: _query).toString();
    final requestAttemptOptions = RequestOptions(path: requestPath, data: _body);
    throw DioError(requestOptions: requestAttemptOptions, error: DioErrorType.response, response: response);
  }

  Future<Response> _fetchResponse(Options? opt) async {
    if (_method == 'get') return client.get(_url, queryParameters: _query, options: opt);
    if (_method == 'post') return client.post(_url, data: _body, options: opt);
    if (_method == 'delete') return client.delete(_url, queryParameters: _query, options: opt, data: _body);
    if (_method == 'put') return client.put(_url, queryParameters: _query, options: opt, data: _body);
    if (_method == 'patch') return client.patch(_url, queryParameters: _query, options: opt, data: _body);
    throw const InvalidMethodFailure();
  }

  HttpResponse _handleSuccess(Response response) {
    final responseData = (response.data ?? <String, dynamic>{}) as Map<String, dynamic>;
    String message = '';
    if (responseData.containsKey('message')) message = response.data['message'].toString();
    return HttpResponse(
      code: response.statusCode!,
      data: responseData,
      message: message,
    );
  }

  void _handleError(Response response) {
    final code = response.statusCode;
    if (code == 400) throw const BadRequestFailure();
    if (code == 401) throw const UnauthorizedFailure();
    if (code == 403) throw const ForbiddenFailure();
    if (code == 404) throw const NotFoundFailure();
    if (code == null || code >= 500) throw const ServerFailure();
    throw const UnrecognizedFailure();
  }
}
