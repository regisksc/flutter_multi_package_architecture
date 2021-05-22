import 'package:flutter_test/flutter_test.dart';
import 'package:iupp_core/core.dart';

void main() {
  test(
      'isSuccessCode should return true if http status code is on the success range',
      () {
    expect(isSuccessCode(null), false);
    expect(isSuccessCode(100), false);

    expect(isSuccessCode(HTTP_STATUS_OK), true);
    expect(isSuccessCode(HTTP_STATUS_CREATED), true);
    expect(isSuccessCode(HTTP_STATUS_ACCEPTED), true);
    expect(isSuccessCode(HTTP_STATUS_NO_CONTENT), true);

    expect(isSuccessCode(HTTP_STATUS_BAD_REQUEST), false);
    expect(isSuccessCode(HTTP_STATUS_UNAUTHORIZED), false);
    expect(isSuccessCode(HTTP_STATUS_FORBIDDEN), false);
    expect(isSuccessCode(HTTP_STATUS_NOT_FOUND), false);
    expect(isSuccessCode(HTTP_STATUS_METHOD_NOT_ALLOWED), false);
    expect(isSuccessCode(HTTP_STATUS_CONFLICT), false);
    expect(isSuccessCode(HTTP_STATUS_PRECONDICTION_FAILED), false);

    expect(isSuccessCode(HTTP_STATUS_INTERNAL_ERROR), false);
    expect(isSuccessCode(HTTP_STATUS_NOT_IMPLEMENTED), false);
  });
}
