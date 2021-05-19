import '../../../core.dart';

HttpClient makeAuthorizeHttpClientDecorator() => AuthorizeHttpClientDecorator(
      decoratee: makeHttpAdapter(),
      secureLocalDatasource: SecureLocalDatasource(),
    );
