class Arguments {
  Arguments({
    this.params = const {},
    this.data,
    this.uri,
  });

  final Map<String, dynamic> params;
  final Uri? uri;
  final dynamic data;

  Arguments copyWith({Map<String, dynamic>? params, dynamic data, Uri? uri}) {
    return Arguments(
      params: params ?? this.params,
      data: data ?? this.data,
      uri: uri ?? this.uri,
    );
  }

  Map<String, String> get queryParams => uri?.queryParameters ?? {};
}
