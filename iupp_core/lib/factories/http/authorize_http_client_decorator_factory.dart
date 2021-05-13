import '../../data/datasources/local/local.dart';
import '../../data/http/http.dart';
import '../../decorators/decorators.dart';
import '../../factories/factories.dart';

HttpClient makeAuthorizeHttpClientDecorator() => AuthorizeHttpClientDecorator(
      decoratee: makeHttpAdapter(),
      secureLocalDatasource: SecureLocalDatasource(),
    );
