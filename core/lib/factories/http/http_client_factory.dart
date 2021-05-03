import 'package:core/adapters/adapters.dart';
import 'package:core/data/http/http.dart';
import 'package:http/http.dart';

HttpClient makeHttpAdapter() => HttpAdapter(Client());
