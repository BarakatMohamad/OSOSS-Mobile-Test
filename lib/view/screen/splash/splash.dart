import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ososs_test/core/constant/color.dart';

import '../../../controller/splash/splash_controller.dart';
import '../../../core/constant/image_assets.dart';

class SplashScreen extends GetView<SplashController> {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColor.white,
        child: Center(
          child: Image.asset(
            fit: BoxFit.cover,
            AppImageAsset.splash,
            height: Get.height * 0.25,
            width: Get.width * 0.63,
          ),
        ),
      ),
    );
  }
}
