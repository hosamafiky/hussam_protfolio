abstract class StorageHelper {
  Future<bool> saveString(String key, String value);
  Future<String?> getString(String key);
  Future<void> remove(String key);
}
