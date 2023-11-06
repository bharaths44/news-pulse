import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../generated/assets.dart';
import '../infrastructure/theme/app_colors.dart';

class Utility {
  static onBackPressed() {
    Get.back();
  }

  static setStatusBarColor(Color colors) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: colors,
    ));
  }

  static hideKeyboard(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
  }

  static bool validatePassword(String value) {
    String pattern =
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
    RegExp regExp = RegExp(pattern);
    return regExp.hasMatch(value);
  }

  static bool validateEmailCharacters(String value) {
    String pattern =
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
    RegExp regExp = RegExp(pattern);
    return regExp.hasMatch(value);
  }

  Future<String> showDatePickerAlert({required BuildContext context}) async {
    DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1950),
        lastDate: DateTime.now());

    if (pickedDate != null) {
      print(pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
      String formattedDate = DateFormat('yyyy/MM/dd').format(pickedDate);
      print(
          formattedDate); //formatted date output using intl package =>  2021-03-16
      return formattedDate;
    } else {
      String currentDate = DateFormat('yyyy/MM/dd').format(pickedDate!);
      return currentDate;
    }
  }

  static void showSuccessSnackBar(String message) {
    Get.snackbar("", message,
        messageText: Padding(
          padding: const EdgeInsets.only(bottom: 12.0),
          child: Text(
            message,
            style: const TextStyle(color: Colors.white),
          ),
        ),
        snackStyle: SnackStyle.GROUNDED,
        snackPosition: SnackPosition.TOP,
        padding: const EdgeInsets.only(bottom: 16),
        backgroundColor: AppColors.successGreen,
        margin: EdgeInsets.zero,
        colorText: Colors.white,
        icon: SvgPicture.asset(Assets.iconsSuccessTick),
        borderRadius: 0);
  }

  static void showErrorSnackBar(
    String message,
  ) {
    Get.snackbar("", message,
        messageText: Padding(
          padding: const EdgeInsets.only(bottom: 12.0),
          child: Text(
            message,
            style: const TextStyle(color: Colors.white),
          ),
        ),
        snackPosition: SnackPosition.TOP,
        backgroundColor: AppColors.errorRed,
        snackStyle: SnackStyle.GROUNDED,
        margin: EdgeInsets.zero,
        padding: const EdgeInsets.only(bottom: 16),
        colorText: Colors.white,
        icon: SvgPicture.asset(Assets.iconsSubtract),
        borderRadius: 0);
  }

  static Future<File?> pickFile() async {
    FilePickerResult? result =
        await FilePicker.platform.pickFiles(allowMultiple: false);
    if (result != null) {
      File file = File(result.files.single.path ?? "");
      return Future.value(file);
    } else {
      // User canceled the picker
      return null;
    }
  }

  static Future<File?> pickImage() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
        allowMultiple: false,
        allowedExtensions: ['jpg', 'JPG', 'png', 'PNG', 'jpeg', 'JPEG']);
    if (result != null) {
      File file = File(result.files.single.path ?? "");
      return Future.value(file);
    } else {
      // User canceled the picker
      return null;
    }
  }
}
