import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tes_ordo_ui_engineer/app/shared/assets.dart';

class Tes1Controller extends GetxController {
  final decorasionMap = BoxDecoration(
      color: Color(0xff898EBC),
      borderRadius: BorderRadius.circular(
        8.r,
      ));
  final navBarData = [
    {
      'image': '$iconsPath/navDraf.png',
    },
    {
      'image': '$iconsPath/navbar2.png',
    },
    {
      'image': '$iconsPath/navHome.png',
    },
    {
      'image': '$iconsPath/navBel.png',
    },
    {
      'image': '$iconsPath/navPerson.png',
    },
  ];
}
