import 'package:flutter/material.dart';
import 'package:flutter_first_project/value/colors_value.dart';
import 'package:get/get.dart';

class BaseController extends GetxController {

  void showSuccessToast(String message){
    Get.snackbar(
        "",
        message,
        titleText: null,
        backgroundColor: ColorsValue.greenSuccess,
        colorText: ColorsValue.white,
        snackPosition: SnackPosition.BOTTOM,
        margin: EdgeInsets.symmetric(horizontal: 0),
        duration: const Duration(seconds: 2)
    );
  }

  void showErrorToast(String message){
    Get.snackbar(
        "",
        message,
        backgroundColor: ColorsValue.redError,
        colorText: ColorsValue.white,
        snackPosition: SnackPosition.BOTTOM,
        margin: EdgeInsets.symmetric(horizontal: 0),
        duration: const Duration(seconds: 2)
    );
  }

}