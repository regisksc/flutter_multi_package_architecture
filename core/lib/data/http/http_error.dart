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
        break;
      case HttpError.notFound:
        return 'B';
        break;
      case HttpError.serverError:
        return 'C';
        break;
      case HttpError.unauthorized:
        return 'D';
        break;
      case HttpError.forbidden:
        return 'E';
        break;
      case HttpError.invalidData:
        return 'F';
        break;
    }
  }
}
