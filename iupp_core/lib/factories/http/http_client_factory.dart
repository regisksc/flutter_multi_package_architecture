import 'package:dio/dio.dart';

import '../../adapters/adapters.dart';
import '../../data/http/http.dart';

HttpClient makeHttpAdapter() => HttpAdapter(Dio());
