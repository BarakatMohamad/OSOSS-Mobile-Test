import 'package:flutter/material.dart';
import 'package:ososs_test/core/constant/color.dart';
import 'package:ososs_test/view/widget/custom_text.dart';

class ClearNameBottom extends StatelessWidget {
  final void Function()? onTap;
  final String text;
  const ClearNameBottom({Key? key, this.onTap, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: AppColor.white,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.delete,
                color: AppColor.red,
                size: 20,
              ),
              const SizedBox(
                width: 20,
              ),
              CustomText(
                color: AppColor.red,
                fontSize: 20,
                fontWeight: FontWeight.w400,
                text: text,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
