class ApiResponse<T> {
  const ApiResponse({
    this.success,
    this.data,
    this.message,
    this.error,
    this.forceLogout,
  });

  final bool? success;

  final T? data;

  final String? message;
  final String? error;

  final bool? forceLogout;
}
