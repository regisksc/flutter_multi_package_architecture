import 'package:shared_preferences/shared_preferences.dart';
import 'package:logger/logger.dart';

late SharedPreferences sharedPreferences;
late Logger logger;

Future<void> initCore() async {
  sharedPreferences = await SharedPreferences.getInstance();
  logger = Logger();
}
