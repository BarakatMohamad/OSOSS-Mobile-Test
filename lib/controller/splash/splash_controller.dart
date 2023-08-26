import 'package:get/get.dart';

import '../../core/constant/routes.dart';
import '../../core/service/service.dart';

class SplashController extends GetxController {
  MyServices myServices = Get.find();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() async {
    Future.delayed(const Duration(seconds: 3), () {
      Get.offAllNamed(AppRoute.homeScreen);
    });
  }

  @override
  void onClose() {
    super.onClose();
  }
}
