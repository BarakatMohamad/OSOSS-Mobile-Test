import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';

class CustomTextFormField extends StatelessWidget {
  final TextAlign textAlign;
  final String? hintText;
  final TextInputType keyboardType;
  final void Function(String? newValue)? onSave;
  final String? Function(String?) validator;
  final TextEditingController? mycontroller;
  final void Function(String)? onChanged;

  const CustomTextFormField({
    this.textAlign = TextAlign.start,
    this.hintText = '',
    this.onSave,
    required this.validator,
    this.mycontroller,
    this.keyboardType = TextInputType.name,
    super.key,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: TextFormField(
      onChanged: onChanged,
      controller: mycontroller,
      textAlign: textAlign,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
          color: AppColor.textGrey,
          fontSize: 20,
          fontWeight: FontWeight.w400,
        ),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
        filled: false,
      ),
      onSaved: onSave,
      validator: validator,
    ));
  }
}
