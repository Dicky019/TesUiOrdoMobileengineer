import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tes_ordo_ui_engineer/app/shared/assets.dart';
import 'package:tes_ordo_ui_engineer/app/shared/widgets/noScrollGlow.dart';

// My widget
import '../controllers/tes3_controller.dart';
import 'widgets/cardTotal.dart';
import 'widgets/contenRebate.dart';
import 'widgets/contenRiwayatRebate.dart';
import 'widgets/appBar.dart';
import 'widgets/flotingButton.dart';

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


