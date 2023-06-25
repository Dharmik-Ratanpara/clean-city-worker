import 'package:clean_city_worker/core/app_export.dart';
import 'package:clean_city_worker/presentation/change_number_otp_screen/models/change_number_otp_model.dart';
import 'package:flutter/material.dart';

class ChangeNumberOtpController extends GetxController {
  TextEditingController entermobilenumbController = TextEditingController();

  TextEditingController enterotpController = TextEditingController();

  Rx<ChangeNumberOtpModel> changeNumberOtpModelObj = ChangeNumberOtpModel().obs;

  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.offNamed(
        AppRoutes.splashScreen,
      );
    });
  }

  @override
  void onClose() {
    super.onClose();
    entermobilenumbController.dispose();
    enterotpController.dispose();
  }
}
