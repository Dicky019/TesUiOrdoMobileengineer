import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class ShareButton extends StatelessWidget {
  final Function() ontap;
  final String name;
  const ShareButton({
    Key? key,
    required this.ontap,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.white,
        elevation: 0,
        minimumSize: Size(360.0.w, 27.h),
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Color(0xff3C3C432E), width: 1.w),
          borderRadius: BorderRadius.circular(6.r),
        ),
      ),
      onPressed: ontap,
      child: Text(
        name,
        style: TextStyle(
          color: Color(0xff262626),
          letterSpacing: 0.9,
          wordSpacing: 0.9,
          fontWeight: FontWeight.w600,
          fontSize: 11.sp,
        ),
      ),
    );
  }
}
