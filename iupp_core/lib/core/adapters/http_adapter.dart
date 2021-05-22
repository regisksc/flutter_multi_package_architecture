import 'package:iupp_core/core/data/http/http_constants.dart';

import '../../core.dart';
import '../dependencies/app_dependencies.dart';

class HttpAdapter implements HttpClient {
  HttpAdapter(this.client);

  final Dio client;

  @override
  Future request({
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
      return isSuccessCode(response.statusCode)
          ? _handleSuccess(response)
          : _throwHttpFailure(response);
    } on DioError catch (err) {
      if (err.response != null) {
        _handleError(err.response!);
      }
    }
  }

  Options _getRequestOptions(Map<String, String>? headers) {
    final defaultHeaders = {
      CONTENT_TYPE: APPLICATION_JSON,
      ACCEPT: APPLICATION_JSON,
    };
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
      case HTTP_METHOD_GET:
        return client.get(url,
            queryParameters: queryParameters, options: options);
      case HTTP_METHOD_POST:
        return client.post(url, data: body, options: options);
      case HTTP_METHOD_DELETE:
        return client.delete(url,
            queryParameters: queryParameters, options: options, data: body);
      case HTTP_METHOD_PUT:
        return client.put(url,
            queryParameters: queryParameters, options: options, data: body);
      case HTTP_METHOD_PATCH:
        return client.patch(url,
            queryParameters: queryParameters, options: options, data: body);
      default:
        throw const InvalidMethodFailure();
    }
  }

  HttpResponse _handleSuccess(Response response) {
    final responseData =
        (response.data ?? <String, dynamic>{}) as Map<String, dynamic>;
    final message = responseData.containsKey('message')
        ? response.data['message'].toString()
        : '';
    return HttpResponse(
      code: response.statusCode!,
      data: responseData,
      message: message,
    );
  }

  void _handleError(Response response) {
    final code = response.statusCode;
    if (code == HTTP_STATUS_BAD_REQUEST) {
      throw const BadRequestFailure();
    }
    if (code == HTTP_STATUS_UNAUTHORIZED) {
      throw const UnauthorizedFailure();
    }
    if (code == HTTP_STATUS_FORBIDDEN) {
      throw const ForbiddenFailure();
    }
    if (code == HTTP_STATUS_NOT_FOUND) {
      throw const NotFoundFailure();
    }
    if (code == null || code >= HTTP_STATUS_INTERNAL_ERROR) {
      throw const ServerFailure();
    }
    throw const UnrecognizedFailure();
  }
}
