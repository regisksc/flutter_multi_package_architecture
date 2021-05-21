abstract class LocalStorage {
  Future<void> saveValue({required String key, required String value});
  Future<void> deleteValue(String key);
  Future<String> getValue(String key);
}
