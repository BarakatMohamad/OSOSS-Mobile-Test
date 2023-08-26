import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ososs_test/core/constant/color.dart';
import 'package:ososs_test/view/screen/page_one/page_one.dart';
import 'package:ososs_test/view/widget/custom_text.dart';
import '../../../controller/home/home_controller.dart';
import '../../widget/home/clear_name_bottom.dart';
import '../../widget/home/custom_bottom.dart';
import '../../widget/home/custom_text_form_field.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (controller) {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: AppColor.appColor,
          title: const CustomText(
            color: AppColor.white,
            text: 'Home',
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
        body: Container(
          color: AppColor.white,
          height: Get.height,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 35,
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomTextFormField(
                    onChanged: (value) {
                      controller.update();
                    },
                    validator: (value) {},
                    hintText: 'Enter your name',
                    mycontroller: controller.name,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  if (controller.name.text.isEmpty)
                    const CustomText(
                      color: AppColor.black,
                      text: 'Your Name',
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    ),
                  if (controller.name.text.isNotEmpty)
                    CustomText(
                      color: AppColor.black,
                      text: controller.name.text,
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    ),
                  SizedBox(
                    height: Get.height * 0.4,
                  ),
                  ClearNameBottom(
                    text: 'Clear text',
                    onTap: () {
                      controller.clearName();
                    },
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  CustomBottom(
                    height: Get.height * 0.062,
                    color: AppColor.blue,
                    width: Get.width * 0.875,
                    textbutton: 'Go to page 1',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PageOneScreen(
                            yourName: controller.name.text ?? "Your Name",
                          ),
                        ),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  CustomBottom(
                    height: Get.height * 0.062,
                    color: AppColor.appColor,
                    width: Get.width * 0.875,
                    textbutton: 'Go to page 2',
                    onPressed: () {
                      controller.goToPageTwo();
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
