import 'package:get/get.dart';

import '../controllers/about_you_instructor_controller.dart';

class AboutYouInstructorBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AboutYouInstructorController>(
      () => AboutYouInstructorController(),
    );
  }
}
