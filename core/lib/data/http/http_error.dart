enum HttpError {
  badRequest,
  notFound,
  serverError,
  unauthorized,
  forbidden,
  invalidData,
}

extension HttpErrorMessages on HttpError {
  String get description {
    switch (this) {
      case HttpError.badRequest:
        return 'A';
      case HttpError.notFound:
        return 'B';
      case HttpError.serverError:
        return 'C';
      case HttpError.unauthorized:
        return 'D';
      case HttpError.forbidden:
        return 'E';
      case HttpError.invalidData:
        return 'F';
    }
  }
}
