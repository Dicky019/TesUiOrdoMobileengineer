import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tes_ordo_ui_engineer/app/modules/tes3/controllers/tes3_controller.dart';
import 'package:tes_ordo_ui_engineer/app/shared/assets.dart';

class RiwayatRebate extends StatelessWidget {
  const RiwayatRebate({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<Tes3Controller>();
    return Container(
      height: 67.h,
      child: Row(
        children: [
          ClipOval(
            child: Container(
              width: 30.w,
              height: 30.w,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Color(0xff53B2FC),
                    Color(0xff127CCE),
                  ],
                ),
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 7.4.w,
                vertical: 7.4.h,
              ),
              child: Image.asset(
                '$iconsPath/biling.png',
              ),
            ),
          ),
          SizedBox(
            width: 9.4.w,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '#REBATEC120211',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Color(0xff212529),
                  height: 1.2,
                  fontSize: 10.4.sp,
                ),
              ),
              Text(
                '20 Juli 2021',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Color(0xff6C757D),
                  height: 1.2,
                  fontSize: 10.4.sp,
                ),
              ),
            ],
          ),
          Spacer(),
          Container(
            height: 23.h,
            width: 73.w,
            decoration: BoxDecoration(
                color: controller.textOrangeColor,
                borderRadius: BorderRadius.circular(14.r)),
            child: Center(
              child: Text(
                'Rp 150.000',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                  height: 1.2,
                  fontSize: 10.4.sp,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}