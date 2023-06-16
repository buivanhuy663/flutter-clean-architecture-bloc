import 'dart:convert';

import 'package:dio/dio.dart';

import '../../../presentation/resources/resources.dart';
import '../../extensions/extensions.dart';

class ErrorHelper {
  ErrorHelper._();

  static String getError(Object? error) {
    String? errorMessage;
    final unknownError = AppText.value.unknownError;
    if (error is DioException) {
      final response = error.response;
      if (response != null) {
        try {
          errorMessage = response.data is String
              ? jsonDecode(response.data)['error']
              : response.data['error'];
        } catch (_) {
          errorMessage = error.response?.statusMessage ?? unknownError;
        }
      } else {
        errorMessage =
            error.message.isNullOrBlank ? unknownError : error.message;
      }
    } else if (error is Exception) {
      errorMessage = error.toString();
    } else {
      errorMessage = unknownError;
    }
    return errorMessage ?? 'ErrorMessage';
  }
}
