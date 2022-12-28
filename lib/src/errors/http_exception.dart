class HttpException implements Exception {
  final dynamic _error;

  const HttpException(this._error);

  dynamic error() => _error;
}
