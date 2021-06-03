import 'package:flutter/material.dart';

class AppNavigator {
  static void goToHome(BuildContext context) {
    Navigator.pushNamed(context, "/home");
  }

  static void goToLogin(BuildContext context) {
    Navigator.pushNamed(context, "/login");
  }

  static void goToList(BuildContext context) {
    Navigator.pushNamed(context, "/list");
  }

  static void goToView(BuildContext context) {
    Navigator.pushNamed(context, "/view");
  }
}
