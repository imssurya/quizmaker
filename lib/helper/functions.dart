import 'package:shared_preferences/shared_preferences.dart';

class HelperFunctions {
  static String USERLOGGEDINKEY = "";
  static saveUserLoggedInDetails({bool isLoggedIn}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(USERLOGGEDINKEY, isLoggedIn);
  }

  static Future<bool> getUserLoggedInDetails({bool isLoggedIn}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(USERLOGGEDINKEY);
  }
}
