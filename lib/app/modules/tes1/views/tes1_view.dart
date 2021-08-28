import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tes_ordo_ui_engineer/app/shared/assets.dart';

// My Widget
import 'package:tes_ordo_ui_engineer/app/shared/widgets/appbar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../controllers/tes1_controller.dart';
import 'widgets/mapConten.dart';

class Tes1View extends GetView<Tes1Controller> {
  final colorComponen = Color(0xff898EBC);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        
        child: Column(
          children: [
            AppBarCostum(
              wordSpacing: 2.1,
              leterSpacing: 0.59,
              actionIcon: "$iconsPath/actionTes1.png",
              name: 'LACAK PESANAN',
              colorBack: Color(0XFF47623F),
              colorName: Color(0XFF545454),
              marginAction: EdgeInsets.only(
                top: 19.h,
                bottom: 19.h,
              ),
            ),
            Maps(),
          ],
        ),
      ),
    );
  }
}



