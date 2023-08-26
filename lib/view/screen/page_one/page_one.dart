import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/constant/color.dart';
import '../../widget/custom_text.dart';
import '../../widget/page_one_widget/list_shape.dart';

class PageOneScreen extends StatefulWidget {
  final String? yourName;

  const PageOneScreen({Key? key, this.yourName}) : super(key: key);

  @override
  _PageOneScreenState createState() => _PageOneScreenState();
}

class _PageOneScreenState extends State<PageOneScreen>
    with SingleTickerProviderStateMixin {
  int selectedShapeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.appColor,
        title: const CustomText(
          color: AppColor.white,
          text: 'Animations',
          fontSize: 20,
          fontWeight: FontWeight.w400,
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomText(
                text: widget.yourName ?? "",
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: AppColor.black,
              ),
              const SizedBox(height: 25),
              AnimatedSwitcher(
                switchInCurve: Curves.easeOut,
                transitionBuilder: (child, animation) =>
                    ScaleTransition(scale: animation, child: child),
                duration: const Duration(milliseconds: 300),
                switchOutCurve: Curves.easeOut,
                child: Container(
                    width: Get.width * 0.82,
                    height: Get.width * 0.82,
                    decoration: selectedShapeIndex == 1
                        ? BoxDecoration(borderRadius: BorderRadius.circular(48))
                        : null,
                    key: ValueKey(selectedShapeIndex.toString()),
                    child: ShapeData.shapeWidgets[selectedShapeIndex]),
              ),
              SizedBox(height: Get.height * 0.2),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(
                  ShapeData.shapeWidgets.length,
                  (index) => GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedShapeIndex = index;
                      });
                    },
                    child: ShapeData.shapeWidgets[index],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
