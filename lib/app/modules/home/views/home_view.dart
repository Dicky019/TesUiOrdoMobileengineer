import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tes_ordo_ui_engineer/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

// Button costum
import 'widgets/NavButton.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFEFEFE),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Made by',
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
            ),
            SizedBox(height: 26),
            Text(
              'Dicky Darmawan',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 39),
            ),
            SizedBox(height: 107),
            NavButton(
              name:'Tes 1',
              ontap: () => controller.nav(Routes.TES1),
            ),
            SizedBox(height: 26),
            NavButton(
              name: 'Tes 2',
              ontap: () => controller.nav(Routes.TES2),
            ),
            SizedBox(height: 26),
            NavButton(
              name: 'Tes 3',
              ontap: () => controller.nav(Routes.TES3),
            ),
          ],
        ),
      ),
    );
  }
}
