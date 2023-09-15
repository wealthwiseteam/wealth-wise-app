import 'package:shared_preferences/shared_preferences.dart';

class PrefsKeys {
  PrefsKeys._();

  static const String login = "login";
  static const String token = "token";
}

class AppPrefs {
  final SharedPreferences _sharedPrefs;
  AppPrefs(this._sharedPrefs);

  /// Auth
  Future<void> setUserLoggedIn(value) async {
    await _sharedPrefs.setBool(PrefsKeys.login, value);
  }

  bool isUserLoggedIn() {
    return _sharedPrefs.getBool(PrefsKeys.login) ?? false;
  }

  Future<void> logout() async {
    await _sharedPrefs.remove(PrefsKeys.login);
  }

  /// token
  Future<void> setToken(String token) async {
    await _sharedPrefs.setString(PrefsKeys.token, token);
  }

  String? getToken() {
    return _sharedPrefs.getString(PrefsKeys.token);
  }

  Future<void> removeToken() async {
    await _sharedPrefs.remove(PrefsKeys.token);
  }
}
