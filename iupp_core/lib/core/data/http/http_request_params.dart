import 'package:equatable/equatable.dart';

enum HttpMethod { get, post, put, delete, patch }

class HttpRequestParams extends Equatable {
  const HttpRequestParams({
    required HttpMethod httpFetchMethod,
    required this.endpoint,
    this.queryParameters,
    this.body,
    this.headers,
  }) : _httpFetchMethod = httpFetchMethod;

  final HttpMethod _httpFetchMethod;
  final String endpoint;
  final Map<String, String>? headers;
  final Map<String, dynamic>? queryParameters;
  final dynamic body;

  @override
  List<Object?> get props => [
        _httpFetchMethod,
        endpoint,
        body,
        headers,
        queryParameters,
      ];
}
