// ignore_for_file: unnecessary_null_comparison

import 'package:shared_preferences/shared_preferences.dart';

class SplashFunction {
  var email;


  Future<void> getValidationData() async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    var e = sharedPreferences.getString('email');
    email = e;
  }

  Future<String> getEmail() async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    var e = sharedPreferences.getString('email');
    return e.toString();
  }

}
