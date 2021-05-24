import 'package:equatable/equatable.dart';

enum HttpMethod { get, post, put, delete, patch }

class HttpRequestParams extends Equatable {
  const HttpRequestParams({
    required HttpMethod httpMethod,
    required this.endpoint,
    this.queryParameters,
    this.body,
    this.headers,
  }) : _httpMethod = httpMethod;

  final HttpMethod _httpMethod;
  final String endpoint;
  final Map<String, String>? headers;
  final Map<String, dynamic>? queryParameters;
  final dynamic body;

  @override
  List<Object?> get props => [
        _httpMethod,
        endpoint,
        body,
        headers,
        queryParameters,
      ];
}
