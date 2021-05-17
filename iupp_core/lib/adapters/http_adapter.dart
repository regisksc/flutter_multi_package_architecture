import 'package:http/http.dart';

import '../core.dart';

class HttpAdapter implements HttpClient {
  HttpAdapter(this.client);

  final Client client;

  @override
  Future request({String? url, String? method, Map? body, Map? headers}) {
    throw UnimplementedError();
  }
}
