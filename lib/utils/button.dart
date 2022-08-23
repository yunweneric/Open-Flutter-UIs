import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:open_flutter_uis/utils/sizing.dart';

Widget submitButton(
    {required BuildContext context,
    required VoidCallback onPressed,
    required String text,
    required Color color,
    required Color textColor,
    EdgeInsetsGeometry? padding,
    BorderRadiusGeometry? borderRadius,
    double? width,
    double? elevation,
    BorderSide? borderSide,
    double? height,
    double? fontSize}) {
  return SizedBox(
    width: width == null ? kScreenWidth(context) : width,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(10.r),
            side: borderSide == null ? BorderSide.none : borderSide),
        padding: padding ?? EdgeInsets.symmetric(vertical: 15.h),
        primary: color,
        elevation: elevation == null ? 0 : elevation,
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(fontSize: fontSize ?? 14.w, color: textColor),
      ),
    ),
  );
}
