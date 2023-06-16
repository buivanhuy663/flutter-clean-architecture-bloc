class ApiConstants {
  ApiConstants._();
  // Base Url
  static const String baseUrl = 'https://';

  // Account
  static const String login = '/login';

  static const List<String> nonAuthenticatedPaths = [
    ApiConstants.login,
  ];
}
