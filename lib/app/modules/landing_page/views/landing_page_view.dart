import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:test_now/app/routes/app_pages.dart';

import '../../../../generated/assets.dart';
import '../controllers/landing_page_controller.dart';

class LandingPageView extends GetView<LandingPageController> {
  const LandingPageView({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 12.0,
              horizontal: 16.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              spacing: 8.0,
              children: [
                SvgPicture.asset(Assets.svgPeopleIcon, height: 40.h),
                Text(
                  "Sign up",
                  style: context.textTheme.bodyLarge?.copyWith(
                    fontSize: 34.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "Select which account you want to create.",
                  textAlign: TextAlign.center,
                  style: context.textTheme.bodyLarge?.copyWith(
                    fontSize: 22.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey.shade800,
                  ),
                ),
                SizedBox(height: 10.0),
                _buildCustomButton(
                  leadingIcon: Assets.svgDriving,
                  title: "Student Account",
                  onTap: () {
                    Get.toNamed(Routes.ABOUT_YOU_INSTRUCTOR);
                  },
                ),
                SizedBox(height: 16.0),
                _buildCustomButton(
                  title: "Instructor Account",
                  leadingIcon: Assets.svgHatIcon,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _buildCustomButton({
    required String leadingIcon,
    required String title,
    VoidCallback? onTap,
  }) {
    return InkWell(
      onTap:
          onTap ??
          () {
            print("${title} is Clicked");
          },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100.0),
          color: Colors.grey.shade300.withOpacity(0.6),
        ),
        padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 22.0),
        child: Row(
          children: [
            Expanded(
              child: Row(
                spacing: 12.0,
                children: [
                  SvgPicture.asset(leadingIcon, height: 26.0),
                  Text(
                    title,
                    style: Get.context!.textTheme.bodyLarge?.copyWith(
                      fontSize: 18.0,
                      color: Get.theme.primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100.0),
                color: Colors.grey.shade300.withOpacity(0.6),
                border: Border.all(width: 5.0, color: Get.theme.primaryColor),
              ),
              child: Icon(
                Icons.chevron_right,
                color: Get.theme.primaryColor,
                size: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
