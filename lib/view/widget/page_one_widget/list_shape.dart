import 'package:flutter/material.dart';
import '../../../core/constant/color.dart';
import '../../widget/page_one_widget/shape_widget.dart';

class ShapeData {
  static List<Widget> shapeWidgets = [
    const ShapeWidget(
      key: Key("0"),
      width: 50,
      height: 50,
      shape: BoxShape.rectangle,
      color: AppColor.blue,
    ),
    ShapeWidget(
      key: const Key("1"),
      width: 50,
      height: 50,
      shape: BoxShape.rectangle,
      color: AppColor.appColor,
      borderRadius: BorderRadius.circular(15),
    ),
    const ShapeWidget(
      key: Key("2"),
      width: 50,
      height: 50,
      shape: BoxShape.circle,
      color: AppColor.lightRed,
    ),
  ];
}
