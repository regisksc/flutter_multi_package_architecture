import '../../adapters/adapters.dart';
import '../../data/http/http.dart';
import 'package:http/http.dart';

HttpClient makeHttpAdapter() => HttpAdapter(Client());
