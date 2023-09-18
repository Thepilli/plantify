import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  //Headings
  static TextStyle titleLarge = GoogleFonts.roboto(
    fontSize: 30.sp,
    fontWeight: FontWeight.w700,
    letterSpacing: 0.4,
  );

  static TextStyle titleMedium = GoogleFonts.roboto(
    fontSize: 16.sp,
    fontWeight: FontWeight.w900,
    letterSpacing: 0.32,
  );
  static TextStyle titleSmall = GoogleFonts.roboto(
    fontSize: 20.sp,
    fontWeight: FontWeight.normal,
    letterSpacing: 0.28,
  );

  //Body
  static TextStyle bodyLarge = GoogleFonts.poppins(
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.02,
  );
  static TextStyle bodyMedium = GoogleFonts.poppins(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.24,
  );

  static TextStyle bodySmall = GoogleFonts.poppins(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.24,
  );
}
