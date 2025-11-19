import 'package:get/get.dart';

import '../modules/about_you_instructor/bindings/about_you_instructor_binding.dart';
import '../modules/about_you_instructor/views/about_you_instructor_view.dart';
import '../modules/about_you_student/bindings/about_you_student_binding.dart';
import '../modules/about_you_student/views/about_you_student_view.dart';
import '../modules/landing_page/bindings/landing_page_binding.dart';
import '../modules/landing_page/views/landing_page_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LANDING_PAGE;

  static final routes = [
    GetPage(
      name: _Paths.LANDING_PAGE,
      page: () => const LandingPageView(),
      binding: LandingPageBinding(),
    ),
    GetPage(
      name: _Paths.ABOUT_YOU_INSTRUCTOR,
      page: () => const AboutYouInstructorView(),
      binding: AboutYouInstructorBinding(),
    ),
    GetPage(
      name: _Paths.ABOUT_YOU_STUDENT,
      page: () => const AboutYouStudentView(),
      binding: AboutYouStudentBinding(),
    ),
  ];
}
