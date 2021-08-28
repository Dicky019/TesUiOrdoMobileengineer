import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tes_ordo_ui_engineer/app/modules/tes3/controllers/tes3_controller.dart';
import 'package:tes_ordo_ui_engineer/app/shared/assets.dart';

// My widget
import 'buttonIncome.dart';
import 'daftarRebate.dart';

class ContenDaftarRebate extends StatelessWidget {
  const ContenDaftarRebate({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<Tes3Controller>();
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13.r),
        color: Colors.white,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 8.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Row(
              children: [
                Text(
                  'Daftar Rebate',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: controller.textDisableColor,
                    fontSize: 9.sp,
                  ),
                ),
                Spacer(),
                ButtonIncome(
                  color: controller.textOrangeColor,
                  child: [
                    Text(
                      'Semua',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        fontSize: 7.4.sp,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 12.w,
                ),
                ButtonIncome(
                  color: Color(0xff53B2FC),
                  child: [
                    Text(
                      'Filter',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        fontSize: 7.4.sp,
                      ),
                    ),
                    SizedBox(
                      width: 3.w,
                    ),
                    Container(
                      width: 7.4.w,
                      child: Image.asset('$iconsPath/options.png'),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            color: Color(0xffbbbbbb),
            thickness: 1.h,
            height: 18.h,
          ),
          DaftarRebate(),
          SizedBox(
            height: 9.h,
          ),
        ],
      ),
    );
  }
}