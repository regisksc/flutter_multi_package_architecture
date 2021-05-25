import 'package:shared_preferences/shared_preferences.dart';

import '../../../core.dart';

class SharedPreferencesLocalStorage implements LocalStorage {
  SharedPreferencesLocalStorage(this.sharedPreferences);

  final SharedPreferences sharedPreferences;

  @override
  Future<void> saveValue({required String key, required String value}) async {
    await sharedPreferences.setString(key, value);
  }

  @override
  Future<void> deleteValue(String key) async {
    await sharedPreferences.remove(key);
  }

  @override
  Future<String> getValue(String key) async {
    return Future.value(sharedPreferences.getString(key));
  }
}
