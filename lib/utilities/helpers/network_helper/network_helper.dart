import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';

class NetworkHelper {
  NetworkHelper._();

  static Future<bool> checkConnectivity({required String baseUrl}) async {
    final isOnLine =
        await Connectivity().checkConnectivity() != ConnectivityResult.none;
    if (isOnLine) {
      try {
        final url = Uri.parse(baseUrl);
        final result = await InternetAddress.lookup(url.host);
        if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
          return true;
        }
      } on SocketException catch (_) {
        return false;
      }
    }
    return isOnLine;
  }
}
