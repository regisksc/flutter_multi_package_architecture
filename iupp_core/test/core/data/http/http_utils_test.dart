import 'package:flutter_test/flutter_test.dart';
import 'package:iupp_core/core.dart';

void main() {
  test('isSuccessCode should return true if http status code is on the success range', () {
    expect(isSuccessCode(null), false);
    expect(isSuccessCode(100), false);

    expect(isSuccessCode(httpOk), true);
    expect(isSuccessCode(httpCreated), true);
    expect(isSuccessCode(httpAccepted), true);
    expect(isSuccessCode(httpNoContent), true);

    expect(isSuccessCode(httpBadRequest), false);
    expect(isSuccessCode(httpUnauthorized), false);
    expect(isSuccessCode(httpForbidden), false);
    expect(isSuccessCode(httpNotFound), false);
    expect(isSuccessCode(httpMethodNotAllowed), false);
    expect(isSuccessCode(httpConflict), false);
    expect(isSuccessCode(httpPreconditionFailed), false);

    expect(isSuccessCode(httpInternalError), false);
    expect(isSuccessCode(httpNotImplemented), false);
  });
}
