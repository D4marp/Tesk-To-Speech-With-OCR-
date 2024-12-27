import 'package:shared_preferences/shared_preferences.dart';

class StorageService {
  Future<void> saveText(String key, String text) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(key, text);
  }

  Future<String?> getText(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(key);
  }

  Future<void> deleteText(String key) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(key);
  }
}