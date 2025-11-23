import 'package:shared_preferences/shared_preferences.dart';

import 'storage_helper.dart';

class PreferencesStorageHelper implements StorageHelper {
  // Singleton pattern
  PreferencesStorageHelper._();
  static final PreferencesStorageHelper instance = PreferencesStorageHelper._();
  factory PreferencesStorageHelper() => instance;

  SharedPreferences? _preferences;

  Future<SharedPreferences> get _prefs async {
    _preferences ??= await SharedPreferences.getInstance();
    return _preferences!;
  }

  @override
  Future<bool> saveString(String key, String value) async {
    final prefs = await _prefs;
    return await prefs.setString(key, value);
  }

  @override
  Future<String?> getString(String key) async {
    final prefs = await _prefs;
    return prefs.getString(key);
  }

  @override
  Future<void> remove(String key) async {
    final prefs = await _prefs;
    await prefs.remove(key);
  }
}
