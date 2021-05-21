import 'package:shared_preferences/shared_preferences.dart';

late SharedPreferences sharedPreferences;

Future<void> initCore() async {
  sharedPreferences = await SharedPreferences.getInstance();
}
