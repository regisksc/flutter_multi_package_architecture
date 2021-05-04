import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

enum HttpMethod { get, post, put, delete }

class HttpRequestParams extends Equatable {
  final HttpMethod _httpFetchMethod;
  final String endpoint;
  final String authorization;
  final Map<String, String> headers;
  final Map<String, dynamic> queryParameters;
  final dynamic body;
  final int timeoutInMilliseconds;

  const HttpRequestParams({
    @required HttpMethod httpFetchMethod,
    @required this.endpoint,
    this.queryParameters,
    this.authorization,
    this.body,
    this.headers,
    this.timeoutInMilliseconds = 15000,
  }) : _httpFetchMethod = httpFetchMethod;

  String get method {
    if (_httpFetchMethod == HttpMethod.get) return 'GET';
    if (_httpFetchMethod == HttpMethod.post) return 'POST';
    if (_httpFetchMethod == HttpMethod.put) return 'PUT';
    if (_httpFetchMethod == HttpMethod.delete) return 'DELETE';
    return 'NO_METHOD';
  }

  @override
  List<Object> get props => [
        _httpFetchMethod,
        endpoint,
        body,
        authorization,
        headers,
        queryParameters,
        timeoutInMilliseconds,
      ];
}
