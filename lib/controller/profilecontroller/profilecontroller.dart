import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  RxBool isValidFirst = false.obs;
  RxBool isValidLast = false.obs;
  RxBool isValidEmail = false.obs;
  RxBool isValidPhoneNumber = false.obs;
  RxBool isValidGender = false.obs;

  setFirstValidation(bool value) {
    isValidFirst.value = value;
  }

  setLastValidation(bool value) {
    isValidLast.value = value;
  }

  setEmailValidation(bool value) {
    isValidEmail.value = value;
  }

  setPhoneNumberValidation(bool value) {
    isValidPhoneNumber.value = value;
  }

  setDropDownValidation(bool value) {
    isValidGender.value = value;
  }

  RxList<String> items = [
    'Male',
    'Female',
  ].obs;

  TextEditingController firstname = TextEditingController();
  TextEditingController lastname = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phone = TextEditingController();
}
