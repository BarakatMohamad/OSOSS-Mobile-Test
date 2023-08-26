import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ososs_test/core/constant/color.dart';
import 'package:ososs_test/view/widget/custom_text.dart';

class CustomCard extends StatelessWidget {
  final String image;
  final String pokemonName;

  const CustomCard({Key? key, required this.image, required this.pokemonName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: Get.height * 0.15,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: const [
          BoxShadow(
            color: Color(0x25000000),
            offset: Offset(0, 4),
            blurRadius: 4,
            spreadRadius: 3,
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(14),
            child: Image.network(
              image,
              height: Get.height,
              width: Get.height * 0.17,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: CustomText(
              color: AppColor.black,
              fontSize: 20,
              fontWeight: FontWeight.w400,
              text: pokemonName,
            ),
          ),
        ],
      ),
    );
  }
}
