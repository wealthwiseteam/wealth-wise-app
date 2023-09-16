import 'package:shared_preferences/shared_preferences.dart';

class PrefsKeys {
  PrefsKeys._();

  static const String login = "login";
  static const String userInfo = "user info";
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

  String getToken() {
    return _sharedPrefs.getString(PrefsKeys.token) ?? "Unknown";
  }

  Future<void> removeToken() async {
    await _sharedPrefs.remove(PrefsKeys.token);
  }

  /// userInfo
  Future<void> setUserInfo({
    required int id,
    required String name,
    required String email,
  }) async {
    await _sharedPrefs.setStringList(
      PrefsKeys.token,
      [
        id.toString(),
        name,
        email,
      ],
    );
  }

  ({int id, String email, String name}) getUserInfo() {
    final userInfo = _sharedPrefs.getStringList(PrefsKeys.userInfo);
    return (
      id: int.parse(userInfo?[0] ?? "0"),
      name: userInfo?[1] ?? "Unknown",
      email: userInfo?[2] ?? "Unknown",
    );
  }

  void removeUserInfo() {
    _sharedPrefs.remove(PrefsKeys.userInfo);
  }

  void clear() {
    _sharedPrefs.clear();
  }
}
