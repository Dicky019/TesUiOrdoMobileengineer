import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tes_ordo_ui_engineer/app/modules/tes3/controllers/tes3_controller.dart';
import 'package:tes_ordo_ui_engineer/app/shared/widgets/navBar.dart';
import 'dart:math';

class FluttingButtonCustom extends StatelessWidget {
  const FluttingButtonCustom({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<Tes3Controller>();
    return Container(
        height: 80 + 68.h,
        width: double.infinity,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 80.h,
                  margin: EdgeInsets.symmetric(horizontal: 20.w),
                  width: double.infinity,
                  color: Colors.white70,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Material(
                    child: InkWell(
                      borderRadius: BorderRadius.circular(13.r),
                      onTap: () {},
                      child: Container(
                        height: 55.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(13.r),
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              Color(0xff53B2FC),
                              Color(0xff127CCE),
                            ],
                          ),
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 20.w,
                            ),
                            Spacer(),
                            Text(
                              'Complain',
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                color: Colors.white,
                                fontSize: 11.5.sp,
                              ),
                            ),
                            Spacer(),
                            Transform.rotate(
                              angle: 180 * pi / 180,
                              child: Icon(
                                Icons.keyboard_backspace_rounded,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 20.w,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            NavBar(
              padding: 12,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              listData: controller.navBarData,
            )
          ],
        ));
  }
}