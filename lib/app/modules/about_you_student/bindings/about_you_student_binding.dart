import 'package:get/get.dart';

import '../controllers/about_you_student_controller.dart';

class AboutYouStudentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AboutYouStudentController>(
      () => AboutYouStudentController(),
    );
  }
}
