import 'package:iupp_core/core.dart';

import '../../../utils/data/storage/mocks.dart';
import '../../../utils/mocks/datasources_mocks.dart';

void main() {
  late AuthorizeHttpClientDecorator authorizeHttpClientDecorator;
  late SharedPreferencesLocalStorageMock sharedPreferencesLocalStorageMock;
  late HttpClientMock httpClientMock;

  setUp(() {
    httpClientMock = HttpClientMock();
    sharedPreferencesLocalStorageMock = SharedPreferencesLocalStorageMock();
    authorizeHttpClientDecorator = AuthorizeHttpClientDecorator(
      decoratee: httpClientMock,
      localStorage: sharedPreferencesLocalStorageMock,
    );
  });

  When mockRequest() => when(
        () => httpClientMock.request(
          method: any(named: 'method'),
          url: any(named: 'url'),
          body: any(named: 'body'),
          headers: any(named: 'headers'),
          queryParameters: any(named: 'queryParameters'),
        ),
      );

  void mockLocalStorageToken() {
    when(() => sharedPreferencesLocalStorageMock.getValue('token')).thenAnswer((_) async => 'token');
    when(() => sharedPreferencesLocalStorageMock.deleteValue('token')).thenAnswer((_) => Future.value());
  }

  void mockSuccessRequest() {
    mockLocalStorageToken();
    mockRequest().thenAnswer((_) => Future.value());
  }

  void mockFailedRequest(HttpFailure failure) {
    mockLocalStorageToken();
    mockRequest().thenThrow(failure);
  }

  test('should call http request with token on headers', () async {
    // arrange
    mockSuccessRequest();

    // act
    await authorizeHttpClientDecorator.request(method: httpGet, url: 'url');

    // assert
    verify(
      () => httpClientMock.request(
        method: any(named: 'method'),
        url: any(named: 'url'),
        body: any(named: 'body'),
        headers: {
          'authorization': 'token',
        },
        queryParameters: any(named: 'queryParameters'),
      ),
    );
  });

  test('should delete token from storage if error is ForbiddenFailure', () async {
    // arrange
    mockFailedRequest(const ForbiddenFailure());

    // act
    authorizeHttpClientDecorator.request(method: httpGet, url: 'url').catchError((error) {
      expect(error, isA<ForbiddenFailure>());
      verify(() => sharedPreferencesLocalStorageMock.deleteValue('token'));
    });
  });

  test('should not delete token from storage if error is not ForbiddenFailure', () async {
    // arrange
    mockFailedRequest(const BadRequestFailure());

    // act
    authorizeHttpClientDecorator.request(method: httpGet, url: 'url').catchError((error) {
      expect(error, isA<BadRequestFailure>());
      verifyNever(() => sharedPreferencesLocalStorageMock.deleteValue('token'));
    });
  });
}
