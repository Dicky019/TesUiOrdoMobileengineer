import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tes_ordo_ui_engineer/app/modules/tes2/controllers/tes2_controller.dart';

class NameContentext extends StatelessWidget {
  const NameContentext({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<Tes2Controller>();
    return Padding(
      padding: EdgeInsets.only(
        left: 18.w,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Dina Florist',
            style: TextStyle(
              wordSpacing: 1.3,
              fontWeight: FontWeight.w600,
              fontSize: 10.sp,
              letterSpacing: 0.2,
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
          Text(
            controller.paragrafTextConten,
            style: TextStyle(
              color: controller.textColor,
              wordSpacing: 1.66,
              letterSpacing: 0.45,
              fontWeight: FontWeight.w400,
              fontSize: 10.sp,
            ),
          ),
        ],
      ),
    );
  }
}
