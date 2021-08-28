import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tes_ordo_ui_engineer/app/modules/tes3/controllers/tes3_controller.dart';

class ColumnIncome extends StatelessWidget {
  final String title;
  final String subTitle;
  final FontWeight fontWeight;
  final Color color;
  const ColumnIncome({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.fontWeight,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<Tes3Controller>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: controller.textDisableColor,
            fontSize: 8.4.sp,
          ),
        ),
        Text(
          subTitle,
          style: TextStyle(
            fontWeight: fontWeight,
            color: color,
            fontSize: 8.4.sp,
          ),
        ),
      ],
    );
  }
}