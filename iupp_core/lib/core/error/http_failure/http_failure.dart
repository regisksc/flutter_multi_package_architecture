import 'package:iupp_core/core.dart';

abstract class HttpFailure extends BaseFailure {
  const HttpFailure(
    this.code, {
    String? message,
    String? title,
  }) : super(message: message, title: title);

  final int? code;
}
