import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NavButton extends StatelessWidget {
  final Function() ontap;
  final String name;
  const NavButton({
    Key? key,
    required this.ontap,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.black,
        minimumSize: Size(305.w, 58.h),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24.r),
        ),
      ),
      onPressed: ontap,
      child: Text(
        name,
        style: GoogleFonts.dmSans(
          color: Colors.white,
          fontWeight: FontWeight.w700,
          fontSize: 20.sp,
          height: 1.302,
          
        ),
      ),
    );
  }
}
