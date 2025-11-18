import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/about_you_instructor_controller.dart';

class AboutYouInstructorView extends GetView<AboutYouInstructorController> {
  const AboutYouInstructorView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: null,
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () {
            Get.back();
          },

          child: Row(children: [Icon(Icons.chevron_left), Text("Back")]),
        ),
      ),
      body: const Center(
        child: Text(
          'AboutYouInstructorView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
