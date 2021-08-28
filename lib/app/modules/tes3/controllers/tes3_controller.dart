import 'dart:ui';
import 'package:get/get.dart';
import 'package:tes_ordo_ui_engineer/app/shared/assets.dart';

class Tes3Controller extends GetxController {

  final List<int> text = [4,5,5,17,17,18];
  final textDisableColor = Color(0xff94AFB6);
  final textOrangeColor = Color(0xffFF9A00);
  final textIncomeColor = Color(0xff41BE06);

  final navBarData = [
    {
      'image': '$iconsPath/navHome.png',
    },
    {
      'image': '$iconsPath/navNote.png',
    },
    {
      'image': '$iconsPath/navTimeRifresh.png',
    },
  ];
}
