import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ValidationController extends GetxController {
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  TextEditingController emailController;
  TextEditingController passwordController;
  TextEditingController phoneNumberController;
  var email;
  var password;
  var phoneNumber;

  @override
  void onInit() {
    super.onInit();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    phoneNumberController = TextEditingController();
  }

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    passwordController.dispose();
    phoneNumberController.dispose();
  }

  String validateEmail(String value) {
    if (!GetUtils.isEmail(value)) {
      return 'Please provide Valid Email';
    }
    return null;
  }

  String validatePhoneNumber(String value) {
    if (!GetUtils.isPhoneNumber(value)) {
      return 'Please provide phone number';
    }
    return null;
  }

  String validatePassword(String value) {
    if (value.length < 8) {
      return 'Password must be 8 characters or greater';
    }
    return null;
  }

  void checkLogin() {
    final isValid = loginFormKey.currentState.validate();
    if (!isValid) {
      return;
    }
    loginFormKey.currentState.save();
  }
}
