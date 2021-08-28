import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tes_ordo_ui_engineer/app/modules/tes3/controllers/tes3_controller.dart';

// My widget
import 'riwayatrebate.dart';

class ContenRiwayatRebate extends StatelessWidget {
  const ContenRiwayatRebate({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<Tes3Controller>();
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.w),
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 9.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13.r),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Riwayat Rebate',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              color: controller.textOrangeColor,
              fontSize: 10.4.sp,
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          RiwayatRebate(),
          RiwayatRebate(),
          RiwayatRebate(),
          RiwayatRebate(),
          SizedBox(
            height: 30.h,
          ),
        ],
      ),
    );
  }
}
