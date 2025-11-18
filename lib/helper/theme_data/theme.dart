import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

ThemeData lightTheme = ThemeData(
  fontFamily: "SFProDisplay",
  useMaterial3: true,
  colorScheme: lightColorScheme,
  textTheme: lightTextTheme,
  snackBarTheme: SnackBarThemeData(
    actionTextColor: Colors.white,
    contentTextStyle: TextStyle(fontSize: 12),
    // <== this line
  ),
);

const lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: Palette.primary,
  onPrimary: Palette.black,
  secondary: Palette.black,
  // tertiary: Palette.charcoalBlue,
  // tertiaryContainer: Palette.charcoalBlue,
  error: Palette.fieryRed,
  surface: Palette.white,
  onSecondary: Palette.periwinkleBlue,
  onError: Palette.black,
  onSurface: Palette.black,
  // scrim: Palette.raisinBlack
);
//
// TextTheme lightTextTheme = TextTheme(
//   labelLarge: TextStyle(
//     fontFamily: 'Manrope',
//     color: Palette.primary,
//     fontSize: 44.sp,
//     fontWeight: FontWeight.bold,
//   ),
//   labelMedium: TextStyle(
//     fontFamily: 'Manrope',
//     color: Palette.black,
//     fontSize: 26.sp,
//     fontWeight: FontWeight.bold,
//   ),
//   labelSmall: TextStyle(
//     fontFamily: 'Manrope',
//     color: Palette.black,
//     fontSize: 22.sp,
//     fontWeight: FontWeight.w400,
//   ),
//   displayLarge: TextStyle(
//     fontFamily: 'Manrope',
//     color: Palette.black,
//     fontSize: 20.sp,
//     fontWeight: FontWeight.bold,
//   ),
//   displayMedium: TextStyle(
//     fontFamily: 'Manrope',
//     color: Palette.black,
//     fontSize: 18.sp,
//     fontWeight: FontWeight.w600,
//   ),
//   displaySmall: TextStyle(
//     fontFamily: 'Manrope',
//     color: Palette.black,
//     fontSize: 16.sp,
//     fontWeight: FontWeight.w500,
//   ),
//   headlineLarge: TextStyle(
//     fontFamily: 'Manrope',
//     color: Palette.black,
//     fontSize: 15.sp,
//     fontWeight: FontWeight.w500,
//   ),
//   headlineMedium: TextStyle(
//     fontFamily: 'Manrope',
//     color: Palette.black,
//     fontSize: 14.sp,
//     fontWeight: FontWeight.w500,
//   ),
//   headlineSmall: TextStyle(
//     fontFamily: 'Manrope',
//     color: Palette.black,
//     fontSize: 13.sp,
//     fontWeight: FontWeight.w400,
//   ),
//   titleLarge: TextStyle(
//     color: Palette.black,
//     fontSize: 12.sp,
//     fontWeight: FontWeight.w400,
//     fontFamily: 'Manrope',
//   ),
//   titleMedium: TextStyle(
//     fontFamily: 'Manrope',
//     color: Palette.black,
//     fontSize: 10.sp,
//     fontWeight: FontWeight.w400,
//   ),
//
//   // titleSmall: GoogleFonts.figtree(
//   //   textStyle: TextStyle(
//   //       color: Palette.black, fontSize: 12.sp, fontWeight: FontWeight.w400),
//   // ),
//   // bodyLarge: GoogleFonts.figtree(
//   //   textStyle: TextStyle(
//   //       color: Palette.black, fontSize: 9.sp, fontWeight: FontWeight.w400),
//   // ),
//   // bodyMedium: GoogleFonts.figtree(
//   //   textStyle: TextStyle(
//   //       color: Palette.black, fontSize: 18.sp, fontWeight: FontWeight.w500),
//   // ),
//   // bodySmall: GoogleFonts.figtree(
//   //   textStyle: TextStyle(
//   //       color: Colors.black, fontSize: 18.sp, fontWeight: FontWeight.bold),
//   // ),
// );

TextTheme lightTextTheme = TextTheme(
  labelLarge: TextStyle(
    fontFamily: 'SFProDisplay',
    color: Palette.primary,
    fontSize: 44.sp,
    fontWeight: FontWeight.w700, // Bold
  ),

  labelMedium: TextStyle(
    fontFamily: 'SFProDisplay',
    color: Palette.black,
    fontSize: 26.sp,
    fontWeight: FontWeight.w700, // Bold
  ),

  labelSmall: TextStyle(
    fontFamily: 'SFProDisplay',
    color: Palette.black,
    fontSize: 22.sp,
    fontWeight: FontWeight.w400, // Regular
  ),

  displayLarge: TextStyle(
    fontFamily: 'SFProDisplay',
    color: Palette.black,
    fontSize: 20.sp,
    fontWeight: FontWeight.w700, // Bold
  ),

  displayMedium: TextStyle(
    fontFamily: 'SFProDisplay',
    color: Palette.black,
    fontSize: 18.sp,
    fontWeight: FontWeight.w600, // SemiBold
  ),

  displaySmall: TextStyle(
    fontFamily: 'SFProDisplay',
    color: Palette.black,
    fontSize: 16.sp,
    fontWeight: FontWeight.w500, // Medium
  ),

  headlineLarge: TextStyle(
    fontFamily: 'SFProDisplay',
    color: Palette.black,
    fontSize: 15.sp,
    fontWeight: FontWeight.w500, // Medium
  ),

  headlineMedium: TextStyle(
    fontFamily: 'SFProDisplay',
    color: Palette.black,
    fontSize: 14.sp,
    fontWeight: FontWeight.w500, // Medium
  ),

  headlineSmall: TextStyle(
    fontFamily: 'SFProDisplay',
    color: Palette.black,
    fontSize: 13.sp,
    fontWeight: FontWeight.w400, // Regular
  ),

  titleLarge: TextStyle(
    fontFamily: 'SFProDisplay',
    color: Palette.black,
    fontSize: 12.sp,
    fontWeight: FontWeight.w400, // Regular
  ),

  titleMedium: TextStyle(
    fontFamily: 'SFProDisplay',
    color: Palette.black,
    fontSize: 10.sp,
    fontWeight: FontWeight.w400, // Regular
  ),
);

class Palette {
  static const Color gunmetal = Color(0xff181933);
  static const Color primary = Color(0xff0088FF);
  static const Color charcoalBlue = Color(0xff26273F);
  static const Color raisinBlack = Color(0xff1E1F36);
  static const Color periwinkleBlue = Color(0xff7C87E7);
  static const Color vividOrchid = Color(0xff8142E7);
  static const Color cobaltBlue = Color(0xff4651ED);
  static const Color amberYellow = Color(0xffFFC02E);
  static const Color lemonChiffon = Color(0xffFFF780);
  static const Color steelNavy = Color(0xff323454);
  static const Color white = Color(0xffF3F4FF);
  static const Color black = Color(0xff1F1F1F);
  static const Color fieryRed = Color(0xffFF4E4E);
  static const Color lightPurple = Color(0xffE1EBFF);
  static const Color lightPink = Color(0xffFFE1FD);
  static const Color dustyPeriwinkle = Color(0xffADAED2);
  static const Color dustySteel = Color(0xff969AA8);
  static const Color lilacPurple = Color(0xff9C8DFF);
  static const Color antiqueGold = Color(0xffCAA163);
  static const Color orchidPurple = Color(0xffC9A7FF);
  static const Color softPeriwinkle = Color(0xffAEB4FF);
  static const Color darkIndigo = Color(0xff191A33);
  static const Color darkSlateBlue = Color(0xff46465D);
  static const Color gunmetalBlue = Color(0xff27303F);
  static const Color grayishPurple = Color(0xff858597);
  static const Color lightPeriwinkle = Color(0xffB4BBF4);
  static const Color blueGray = Color(0xff303150);
  static const Color midnightBlue = Color(0xff1E1F39);
  static const Color mutedIndigo = Color(0xff54557B);
  static const Color shadowPurple = Color(0xff54557B);
  static const Color darkMidnightBlue = Color(0xff1C1D31);

  //Blue Gradient
  static const RadialGradient backgroundGradient = RadialGradient(
    center: Alignment(0.5, -0.7),
    radius: 1.2,
    stops: [0.1, 0.6],
    colors: [Color(0xffFFE9F7), Color(0xffECE7FF)],
  );

  static const LinearGradient primagryGradient = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    stops: [0.1, 0.6],
    colors: [vividOrchid, cobaltBlue],
  );

  static const LinearGradient primagryLightGradient = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    stops: [0.1, 0.6],
    colors: [orchidPurple, softPeriwinkle],
  );

  static const LinearGradient primagryGradientLittleLight = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    stops: [0.1, 0.6],
    colors: [Color(0xff9968EC), Color(0xff6B74F1)],
  );

  static const LinearGradient transparet = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [Color.fromARGB(0, 129, 66, 231), Color.fromARGB(0, 70, 81, 237)],
  );
  static const LinearGradient premiumGradient = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    stops: [0.1, 0.6],
    colors: [amberYellow, lemonChiffon],
  );
}

OutlineInputBorder outlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(10.r),
  borderSide: const BorderSide(color: Color(0xB22F2B3D)),
);
