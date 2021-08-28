import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// My Widget
import 'package:tes_ordo_ui_engineer/app/modules/tes1/controllers/tes1_controller.dart';
import 'package:tes_ordo_ui_engineer/app/shared/assets.dart';
import 'package:tes_ordo_ui_engineer/app/shared/widgets/navBar.dart';
import 'slideUp.dart';

class Maps extends StatelessWidget {
  const Maps({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<Tes1Controller>();
    return SingleChildScrollView(
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Container(
              margin: EdgeInsets.fromLTRB(0, 336, 0, 0),
              width: 190.w,
              height: 305.h,
            ),
          ),
          Positioned(
            left: 14.w,
            top: -44.h,
            child: Transform.rotate(
              angle: 40 * pi / 180,
              child: Container(
                height: 141.h,
                width: 70.w,
                decoration: controller.decorasionMap,
              ),
            ),
          ),
          Positioned(
            left: 172.w,
            top: -72.h,
            child: Transform.rotate(
              angle: 40 * pi / 180,
              child: Container(
                height: 140.h,
                width: 103.w,
                decoration: controller.decorasionMap,
              ),
            ),
          ),
          Positioned(
            right: -14.w,
            top: -18.h,
            child: Transform.rotate(
              angle: 40 * pi / 180,
              child: Container(
                height: 170.h,
                width: 97.w,
                decoration: controller.decorasionMap,
              ),
            ),
          ),
          Positioned(
            right: -13.w,
            top: 106.w,
            child: Transform.rotate(
              angle: 40 * pi / 180,
              child: Container(
                height: 90.h,
                width: 20.w,
                decoration: controller.decorasionMap,
              ),
            ),
          ),
          Positioned(
            right: 40.w,
            top: 114.h,
            child: Transform.rotate(
              angle: 39 * pi / 180,
              child: Container(
                height: 100.h,
                width: 265.w,
                decoration: controller.decorasionMap,
              ),
            ),
          ),
          Positioned(
            right: -40.w,
            top: 162.h,
            child: Transform.rotate(
              angle: 39 * pi / 180,
              child: Container(
                height: 182.h,
                width: 70.w,
                decoration: controller.decorasionMap,
              ),
            ),
          ),
          Positioned(
            left: 36.w,
            top: 204.h,
            child: Transform.rotate(
              angle: 39 * pi / 180,
              child: Container(
                height: 98.h,
                width: 132.w,
                decoration: controller.decorasionMap,
              ),
            ),
          ),
          Positioned(
            left: -55.w,
            top: 116.h,
            child: Transform.rotate(
              angle: 39 * pi / 180,
              child: Container(
                  height: 122.h,
                  width: 82.w,
                  decoration: controller.decorasionMap),
            ),
          ),
          Positioned(
            left: -58.w,
            bottom: 207.h,
            child: Transform.rotate(
              angle: 40 * pi / 180,
              child: Container(
                height: 144.h,
                width: 129.w,
                decoration: controller.decorasionMap,
              ),
            ),
          ),
          Positioned(
            right: -14.w,
            bottom: -14.h,
            child: Transform.rotate(
              angle: 39.5 * pi / 180,
              child: Container(
                height: 376.h,
                width: 97.w,
                decoration: controller.decorasionMap,
              ),
            ),
          ),
          Positioned(
            left: 110.w,
            bottom: 86.h,
            child: Transform.rotate(
              angle: 39.5 * pi / 180,
              child: Container(
                height: 270.h,
                width: 130.w,
                decoration: controller.decorasionMap,
              ),
            ),
          ),
          Positioned(
            left: -40.w,
            bottom: -28.h,
            child: Transform.rotate(
              angle: 39.5 * pi / 180,
              child: Container(
                  height: 140.h,
                  width: 130.w,
                  decoration: controller.decorasionMap),
            ),
          ),
          Container(
            width: 30.w,
            margin: EdgeInsets.fromLTRB(64.w, 250.h, 0, 0),
            child: Image.asset(
              '$iconsPath/line.png',
            ),
          ),
          Container(
            width: 165.w,
            margin: EdgeInsets.fromLTRB(63.6.w, 115.h, 0, 0),
            child: Image.asset(
              '$iconsPath/line2.png',
            ),
          ),
          Container(
            width: 37.w,
            margin: EdgeInsets.fromLTRB(50.w, 317.0.h, 0, 0),
            child: Stack(
              children: [
                Image.asset('$iconsPath/pin.png'),
                Container(
                  margin: EdgeInsets.fromLTRB(7.w, 9.h, 0, 0),
                  height: 21.h,
                  child: Image.asset(
                    '$iconsPath/shopping-bag.png',
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 40.h,
            width: 40.w,
            padding: EdgeInsets.symmetric(horizontal: 6.w),
            decoration: BoxDecoration(
                color: Color(0xff92D274).withOpacity(0.6),
                borderRadius: BorderRadius.circular(20.r)),
            margin: EdgeInsets.fromLTRB(113.w, 170.h, 0, 0),
            child: Image.asset('$iconsPath/delivery.png'),
          ),
          Container(
            height: 48.h,
            width: 48.w,
            padding: EdgeInsets.symmetric(horizontal: 13.w, vertical: 13.h),
            decoration: BoxDecoration(
              color: Color(0xffEB5757).withOpacity(0.1),
              borderRadius: BorderRadius.circular(24.r),
            ),
            margin: EdgeInsets.fromLTRB(220.w, 92.h, 0, 0),
            child: ClipOval(
              child: Container(
                color: Color(0xff47623F),
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: SlideUp(),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: -05.h,
            child: NavBar(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              listData: controller.navBarData,
            ),
          ),
        ],
      ),
    );
  }
}