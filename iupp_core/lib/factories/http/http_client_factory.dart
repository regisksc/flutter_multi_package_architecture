import 'package:http/http.dart';

import '../../adapters/adapters.dart';
import '../../data/http/http.dart';

HttpClient makeHttpAdapter() => HttpAdapter(Client());
