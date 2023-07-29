import 'package:flutter/material.dart';

class LoginProvider with ChangeNotifier {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  bool passwordVisible = false;
  bool loadingState = false;

  void showPassword(bool state) {
    passwordVisible = state;
    notifyListeners();
  }

  // this helpe to make a prgressive solution for laoding
  void showLoadingState(bool state) {
    loadingState = state;
    notifyListeners();
  }

  void disposesControllers() {
    username.clear();
    password.clear();
    notifyListeners();
  }
}