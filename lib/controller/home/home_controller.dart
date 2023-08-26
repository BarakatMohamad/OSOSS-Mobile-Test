import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:ososs_test/core/constant/routes.dart';

class HomeController extends GetxController {
  TextEditingController name = TextEditingController();

  clearName() {
    name.text = '';
    update();
  }

  goToPageOne() {
    Get.toNamed(AppRoute.pageOne);
  }

  goToPageTwo() {
    Get.toNamed(AppRoute.pokemon);
  }

  @override
  void onInit() {
    name.text = '';
    super.onInit();
  }
}
