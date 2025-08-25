class AppExceptions implements Exception {
  final String? _message;
  final String? _prefix;
  AppExceptions([this._message, this._prefix]);

  @override
  String toString() {
    return '$_message$_prefix';
  }
}

class NoInternetException extends AppExceptions {
  NoInternetException([String? message])
    : super(message, 'No Internet Connection');
}

class UnauthorisedException extends AppExceptions {
  UnauthorisedException([String? message])
    : super(message, 'You dont have access to this');
}

class RequestTimeoutException extends AppExceptions {
  RequestTimeoutException([String? message])
    : super(message, 'Request time out');
}

class FetchDataException extends AppExceptions {
  FetchDataException([String? message]) : super(message, '');
}
