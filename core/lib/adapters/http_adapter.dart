import 'package:core/data/http/http.dart';
import 'package:http/http.dart';

class HttpAdapter implements HttpClient {
  final Client client;

  HttpAdapter(this.client);
  @override
  Future request({String? url, String? method, Map? body, Map? headers}) {
    // TODO: implement request
    throw UnimplementedError();
  }
}
