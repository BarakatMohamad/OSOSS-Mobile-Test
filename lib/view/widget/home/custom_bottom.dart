import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../custom_text.dart';

class CustomBottom extends StatelessWidget {
  final void Function()? onPressed;

  final String textbutton;

  final double height;

  final double width;
  final Color color;
  const CustomBottom(
      {Key? key,
      this.onPressed,
      required this.textbutton,
      required this.height,
      required this.width,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.only(bottom: 4),
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Center(
          child: CustomText(
            text: textbutton,
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
