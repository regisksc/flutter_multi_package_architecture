import '../../../../core.dart';
import '../../../dependencies/app_dependencies.dart';

HttpClient makeHttpAdapter() => HttpAdapter(Dio());
