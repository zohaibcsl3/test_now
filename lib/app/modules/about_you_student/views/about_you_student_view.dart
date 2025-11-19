import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:test_now/helper/UI_widgets/common_extensions.dart';
import 'package:test_now/helper/UI_widgets/custom_button.dart';
import 'package:test_now/helper/UI_widgets/custom_textfield_title.dart';

import '../../../../generated/assets.dart';
import '../../../../helper/UI_widgets/custom_back_app_bar.dart';
import '../controllers/about_you_student_controller.dart';

class AboutYouStudentView extends GetView<AboutYouStudentController> {
  const AboutYouStudentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomBackAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
        child: Column(
          children: [
            Expanded(
              child: Column(
                spacing: 10.0,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(Assets.svgProfileIcon, height: 40.h),
                  Text(
                    "About You",
                    style: context.textTheme.bodyLarge?.copyWith(
                      fontSize: 34.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    "Enter your personal details\nbelow.",
                    textAlign: TextAlign.center,
                    style: context.textTheme.bodyLarge?.copyWith(
                      fontSize: 22.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey.shade800,
                    ),
                  ).paddingHorizontal(25.0),
                  CustomTextFieldTitle(controller: controller.nameController),
                ],
              ),
            ),
            CustomizedButton(title: "Next"),
          ],
        ),
      ),
    );
  }
}
