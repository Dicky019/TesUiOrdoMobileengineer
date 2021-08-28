import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tes_ordo_ui_engineer/app/modules/tes3/controllers/tes3_controller.dart';

class CardTotal extends StatelessWidget {
  final String title;
  final String total;
  const CardTotal({
    Key? key,
    required this.title,
    required this.total,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<Tes3Controller>();
    return Container(
      height: 96.h,
      margin: EdgeInsets.symmetric(horizontal: 20.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18.r),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 10),
            blurRadius: 40,
            spreadRadius: 0,
            color: Colors.black.withOpacity(0.3),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 22.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 23.5.h,
            ),
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: controller.textOrangeColor,
                fontSize: 11.4.sp,
              ),
            ),
            Spacer(),
            Text(
              total,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: Color(0xff6D6D6D),
                fontSize: 19.sp,
              ),
            ),
            SizedBox(
              height: 23.5.h,
            ),
          ],
        ),
      ),
    );
  }
}
