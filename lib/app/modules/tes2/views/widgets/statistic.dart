import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../controllers/tes2_controller.dart';

class Statistics extends StatelessWidget {
  final String value;
  final String name;

  const Statistics({
    Key? key,
    required this.value,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<Tes2Controller>();
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 5.h,
          ),
          Text(
            value,
            style: TextStyle(
              wordSpacing: -0.3,
              color: controller.textColor,
              fontWeight: FontWeight.w600,
              fontSize: 14.sp,
            ),
          ),
          Text(
            name,
            style: TextStyle(
              color: controller.textColor,
              fontWeight: FontWeight.w400,
              fontSize: 11.sp,
              letterSpacing: -0.1,
            ),
          )
        ],
      ),
    );
  }
}