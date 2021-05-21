import '../../../core.dart';
import '../../../init_core.dart';

HttpClient makeAuthorizeHttpClientDecorator() => AuthorizeHttpClientDecorator(
      decoratee: makeHttpAdapter(),
      localStorage: SharedPreferencesLocalStorage(sharedPreferences),
    );
