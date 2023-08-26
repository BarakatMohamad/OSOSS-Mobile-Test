import 'package:flutter/material.dart';

class ShapeWidget extends StatelessWidget {
  final double height;
  final double width;
  final Color? color;
  final BoxShape shape;
  final BorderRadiusGeometry? borderRadius;

  const ShapeWidget(
      {super.key,
      required this.height,
      required this.width,
      this.color,
      required this.shape,
      this.borderRadius});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        color: color,
        shape: shape,
      ),
    );
  }
}
