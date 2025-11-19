import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'custom_textfield_2.dart';

class CustomTextFieldTitle extends StatelessWidget {
  const CustomTextFieldTitle({super.key, required this.controller});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "Full Name",
          style: context.textTheme.bodyLarge?.copyWith(
            fontSize: 17.0,
            color: context.theme.primaryColor,
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.normal,
          ),
        ),
        CustomTextField(
          text: "text",
          textTheme: context.textTheme,
          isPassword: false,
          controller: controller,
          validator: null,
          isPrefixIcon: false,
          borderRadius: 12.0,
          isOnchangedFunction: false,
          readOnly: false,
        ),
        // CustomTextFieldForm(controller: controller),
      ],
    );
  }
}
