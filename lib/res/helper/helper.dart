import 'package:shared_preferences/shared_preferences.dart';

class HelperFunction {
  //Keys
  static String userLoggedInKey = "LOGGEDINKEY";
  static String userNameKey = "NAMEKEY";
  static String userEmailKey = "EMAILKEY";

  //Saving the Data to SharedPrefrencs
  static Future<bool> saveUserLoggedInStatus(bool isUserLogedIn) async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return await sf.setBool(userLoggedInKey, isUserLogedIn);
  }

  static Future<bool> saveUserNameSF(String userName) async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return await sf.setString(userNameKey, userName);
  }

  static Future<bool> saveUserEmailSF(String userEmail) async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return await sf.setString(userEmailKey, userEmail);
  }

  //Get the Data from SharedPrefrencs
  static Future<bool?> getUserLoggedInStatus() async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return sf.getBool(userLoggedInKey);
  }
}
