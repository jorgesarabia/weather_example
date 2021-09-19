class BasicError {
  const BasicError._(
    bool somethingWentWrong, {
    required this.exception,
  }) : _somethingWentWrong = somethingWentWrong;

  factory BasicError.empty() {
    return BasicError._(
      false,
      exception: Exception(),
    );
  }

  factory BasicError.error(Exception exception) {
    return BasicError._(
      true,
      exception: exception,
    );
  }

  final bool _somethingWentWrong;
  final Exception exception;

  String get message {
    final exceptionMessage = exception.toString();
    if (exceptionMessage == 'Exception') {
      return 'Something went wrong';
    }
    return exceptionMessage;
  }

  bool get somethingWentWrong => _somethingWentWrong;
}
