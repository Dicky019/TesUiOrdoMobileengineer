import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'dart:math';
import 'package:tes_ordo_ui_engineer/app/shared/assets.dart';
import 'package:tes_ordo_ui_engineer/app/shared/widgets/navBar.dart';
import 'package:tes_ordo_ui_engineer/app/shared/widgets/noScrollGlow.dart';

// My widget
import '../controllers/tes3_controller.dart';
import 'widgets/cardTotal.dart';
import 'widgets/contenRebate.dart';
import 'widgets/contenRiwayatRebate.dart';
import 'widgets/appBar.dart';

class Tes3View extends GetView<Tes3Controller> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFCF8F8),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FluttingButtonCustom(),
      body: SafeArea(
        child: Column(
          children: [
            AppBarTes3(
              actionIcon: '$iconsPath/appbarStatistic.png',
              name: 'FINANSIAL',
              colorBack: controller.textOrangeColor,
              colorName: Color(0XFF545454),
              marginAction: EdgeInsets.symmetric(vertical: 20.h),
              actionIcon2: '$iconsPath/appbarBel.png',
            ),
            Expanded(
              child: ScrollConfiguration(
                behavior: NoScrollGlow(),
                child: ListView(
                  children: [
                    SizedBox(
                      height: 10.h,
                    ),
                    CardTotal(
                      total: 'Rp 5.000.000,00',
                      title: 'TOTAL BONUS',
                    ),
                    SizedBox(
                      height: 13.h,
                    ),
                    CardTotal(
                      total: 'Rp 50.000,00',
                      title: 'PENDING BONUS',
                    ),
                    SizedBox(
                      height: 13.h,
                    ),
                    ContenDaftarRebate(),
                    SizedBox(
                      height: 13.h,
                    ),
                    ContenRiwayatRebate(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

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
