import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserServices {
  //methord to store user name and user email to save the device usage
  static Future<void> storeUserDetails({
    required String userName,
    required String userEmail,
    required String userPassword,
    required String userconfirmPassword,
    required BuildContext context,
  }) async {
    //if user both passwords are same then user data save the device strorage
    try {
      if (userPassword != userconfirmPassword) {
        //show the masssage to the user
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("password and confirm password do not match"),
          ),
        );
        return;
      }
      //create a return instence sheitd preferences
      SharedPreferences preferences = await SharedPreferences.getInstance();

      //the user name and enamil ass key value paires
      await preferences.setString("userName", userName);

      //show a maassage to the user
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("user details added successfull")),
      );
    } catch (error) {
      error.toString();
    }
  }
}
