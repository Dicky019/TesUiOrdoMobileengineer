import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tes_ordo_ui_engineer/app/shared/assets.dart';
import 'package:tes_ordo_ui_engineer/app/shared/widgets/appbar.dart';
import 'package:tes_ordo_ui_engineer/app/shared/widgets/navBar.dart';

import '../controllers/tes1_controller.dart';

class Tes1View extends GetView<Tes1Controller> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
        color: Colors.red,
        child: Column(
          children: [
            AppBarCostum(
              actionIcon: "$iconsPath/actionTes1.png",
              name: 'LACAK PESANAN',
              colorBack: Color(0XFF47623F),
              colorName: Color(0XFF545454),
            ),
            Text(
              'Tes1View is working',
              style: TextStyle(fontSize: 20),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: NavBar(
                listData: controller.navBarData,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
