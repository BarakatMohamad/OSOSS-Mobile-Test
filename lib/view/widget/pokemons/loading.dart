import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';

class LoadingManager extends StatelessWidget {
  final bool isLoading;
  final Widget child;
  const LoadingManager({
    Key? key,
    required this.isLoading,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (!isLoading) return child;
    return Center(
      child: Container(
          // color: Colors.black38,
          height: double.maxFinite,
          width: double.maxFinite,
          alignment: Alignment.center,
          child: const CircularProgressIndicator(
            color: AppColor.appColor,
          )),
    );
  }
}
