import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tes_ordo_ui_engineer/app/shared/assets.dart';

import 'package:tes_ordo_ui_engineer/app/shared/widgets/appbar.dart';
import 'package:tes_ordo_ui_engineer/app/shared/widgets/navBar.dart';
import '../controllers/tes2_controller.dart';
import 'widgets/GridConten.dart';
import 'widgets/NavButton.dart';
import 'widgets/nameContenText.dart';
import 'widgets/statisticConten.dart';

class Tes2View extends GetView<Tes2Controller> {
  @override
  Widget build(BuildContext context) {
    final maxW = MediaQuery.of(context).size;
    // print(maxW);
    print((maxW.width * 0.23));
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppBarCostum(
              actionIcon: '$iconsPath/actionTes2.png',
              name: 'PORTFOLIO VENDOR',
              colorBack: controller.backAppbarColor,
              colorName: controller.nameAppbarColor,
            ),
            SizedBox(height: 10.5.h),
            StatisticConten(),
            SizedBox(
              height: 8.5.h,
            ),
            NameContentext(),
            SizedBox(
              height: 0.5.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.w),
              child: ShareButton(
                name: 'PORTFOLIO',
                ontap: () {},
              ),
            ),
            SizedBox(
              height: 5.5.h,
            ),
            Expanded(
              child: GridConten(),
            ),
            NavBar(
              listData: controller.navBarData,
            ),
          ],
        ),
      ),
    );
  }
}
