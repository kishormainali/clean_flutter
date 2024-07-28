class AppError {
  AppError(this.message);
  final String message;

  @override
  String toString() {
    return message;
  }
}
