import 'package:shared_preferences/shared_preferences.dart';

class KeyStorage
{
  static const _apiKey = 'http://10.65.187.153/v1';

  static Future<void> keyStore(String apiKey) async
  {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_apiKey, apiKey);
  }

  static Future<void> keyLoad(String apiKey) async
  {
    final prefs = await SharedPreferences.getInstance();
    await prefs.getString(_apiKey);
  }

}


class AppCache {
  static const kUser = 'user';

  Future<void> invalidate() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(kUser, false);
  }

  Future<void> cacheUser() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(kUser, true);
  }

  Future<bool> isUserLoggedIn() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(kUser) ?? false;
  }
}
