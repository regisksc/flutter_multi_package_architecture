import '../../../../core.dart';
import '../http.dart';

class HttpAdapter implements HttpClient {
  HttpAdapter(this.client);
  final Dio client;

  @override
  Future<HttpResponse> request({
    required String method,
    required String url,
    Map<String, dynamic>? body,
    Map<String, dynamic>? queryParameters,
    Map<String, String>? headers,
  }) async {
    final options = _getRequestOptions(headers);

    try {
      final response = await _fetchResponse(
        method: method,
        url: url,
        body: body,
        queryParameters: queryParameters,
        options: options,
      );
      if (isSuccessCode(response.statusCode) == false) _throwHttpFailure(response);
      return _handleSuccess(response);
    } on DioError catch (err) {
      throw _handleError(err.response!);
    }
  }

  Options _getRequestOptions(Map<String, String>? headers) {
    final defaultHeaders = {contentType: applicationJson, accept: applicationJson};
    return Options(headers: defaultHeaders..addAll(headers ?? {}));
  }

  void _throwHttpFailure(Response response) {
    final requestOptions = response.requestOptions;
    throw DioError(
      requestOptions: requestOptions,
      error: DioErrorType.response,
      response: response,
    );
  }

  Future<Response> _fetchResponse({
    required String method,
    required String url,
    Map<String, dynamic>? body,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    switch (method) {
      case httpGet:
        return client.get(url, queryParameters: queryParameters, options: options);
      case httpPost:
        return client.post(url, data: body, options: options);
      case httpDelete:
        return client.delete(url, queryParameters: queryParameters, options: options, data: body);
      case httpPut:
        return client.put(url, queryParameters: queryParameters, options: options, data: body);
      case httpPatch:
        return client.patch(url, queryParameters: queryParameters, options: options, data: body);
      default:
        throw const InvalidMethodFailure();
    }
  }

  HttpResponse _handleSuccess(Response response) {
    final responseData = (response.data ?? <String, dynamic>{}) as Map<String, dynamic>;
    final message = responseData.containsKey('message') ? response.data['message'].toString() : '';
    return HttpResponse(
      code: response.statusCode!,
      data: responseData,
      message: message,
    );
  }

  Object _handleError(Response response) {
    final code = response.statusCode;
    if (code == httpBadRequest) throw const BadRequestFailure();
    if (code == httpUnauthorized) throw const UnauthorizedFailure();
    if (code == httpForbidden) throw const ForbiddenFailure();
    if (code == httpNotFound) throw const NotFoundFailure();
    if (code == null || code >= httpInternalError) throw const ServerFailure();
    throw const UnrecognizedFailure();
  }
}
