import 'package:shared_preferences/shared_preferences.dart';

import './share_preference_key.dart';

class SharePreferenceDataSource {
  SharePreferenceDataSource(this._preferences);

  final SharedPreferences _preferences;

  Future<bool> setAccessToken(String token) => _preferences.setString(
        SharePreferenceKey.accessToken,
        token,
      );

  Future<bool> setRefreshToken(String token) => _preferences.setString(
        SharePreferenceKey.refreshToken,
        token,
      );

  Future<void> clearAllAuthData() async {
    await _preferences.remove(SharePreferenceKey.accessToken);
    await _preferences.remove(SharePreferenceKey.refreshToken);
  }

  String? getAccessToken() => _preferences.getString(
        SharePreferenceKey.accessToken,
      );

  String? getRefreshToken() => _preferences.getString(
        SharePreferenceKey.refreshToken,
      );
}
