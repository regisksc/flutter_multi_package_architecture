import 'http.dart';

bool isSuccessCode(int? code) =>
    code != null && code >= HTTP_STATUS_OK && code <= HTTP_STATUS_NO_CONTENT;
