import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:open_flutter_uis/utils/colors.dart';

class AppTheme {
  // 1
  static TextTheme lightTextTheme = TextTheme(
    bodyText1: GoogleFonts.dmSans(fontSize: 14.0.sp, fontWeight: FontWeight.w700, color: kDark),
    headline1: GoogleFonts.dmSans(fontSize: 23.0.sp, fontWeight: FontWeight.w700, color: kDark, height: 1.2.h),
    headline2: GoogleFonts.dmSans(fontSize: 18.0.sp, fontWeight: FontWeight.w500, color: kDark),
    headline3: GoogleFonts.dmSans(fontSize: 16.0.sp, fontWeight: FontWeight.w600, color: kDark),
    subtitle1: GoogleFonts.dmSans(fontSize: 18.0.sp, fontWeight: FontWeight.w600, color: kDark),
    labelMedium: TextStyle(fontSize: 14.0.sp, color: kGrey, fontWeight: FontWeight.w400),
  );

  // 2
  static TextTheme darkTextTheme = TextTheme(
    bodyText1: GoogleFonts.dmSans(fontSize: 14.0.sp, fontWeight: FontWeight.w600, color: Colors.white),
    headline1: GoogleFonts.dmSans(fontSize: 23.0.sp, fontWeight: FontWeight.w700, color: kWhite, height: 1.2.h),
    headline2: GoogleFonts.dmSans(fontSize: 18.0.sp, fontWeight: FontWeight.w700, color: Colors.white),
    headline3: GoogleFonts.dmSans(fontSize: 16.0.sp, fontWeight: FontWeight.w600, color: Colors.white),
    subtitle1: GoogleFonts.dmSans(fontSize: 18.0.sp, fontWeight: FontWeight.w600, color: kWhite),
    labelMedium: TextStyle(fontSize: 14.0.sp, color: kWhite, fontWeight: FontWeight.w400),
  );

  // 3
  static light() {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: kTeal, primary: kTeal),
      brightness: Brightness.light,
      primaryColor: kTeal,
      textTheme: lightTextTheme,
      backgroundColor: kBgColor,
      scaffoldBackgroundColor: kBgColor,
      bottomAppBarColor: kWhite,
      primaryColorDark: kDark,
      primaryColorLight: kWhite,
      shadowColor: Colors.grey,
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: EdgeInsets.symmetric(vertical: 14.h, horizontal: 10.w),
        hintStyle: lightTextTheme.labelMedium,
        border: OutlineInputBorder(
          borderSide: BorderSide(color: kTextGrey, width: 1.0.w),
          borderRadius: BorderRadius.circular(4.r),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: kOrange, width: 1.0.w),
          borderRadius: BorderRadius.circular(4.r),
        ),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: kTeal,
        foregroundColor: kWhite,
      ),
      appBarTheme: AppBarTheme(
          backgroundColor: kBgColor,
          elevation: 0,
          actionsIconTheme: IconThemeData(color: kDark),
          iconTheme: IconThemeData(color: kDark),
          titleTextStyle: TextStyle(
            color: kDark,
            fontSize: 18.sp,
            fontWeight: FontWeight.w500,
          )),
    );
  }

  // 4
  static dark() {
    return ThemeData(
      brightness: Brightness.dark,
      primaryColor: kTeal,
      textTheme: darkTextTheme,
      backgroundColor: kBgColor,
      scaffoldBackgroundColor: kDark,
      bottomAppBarColor: kDark,
      primaryColorDark: kWhite,
      primaryColorLight: kWhite,
    );
  }
}
