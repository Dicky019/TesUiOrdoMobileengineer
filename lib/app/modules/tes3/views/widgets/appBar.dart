import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tes_ordo_ui_engineer/app/shared/assets.dart';

class AppBarTes3 extends StatelessWidget {
  final String actionIcon, actionIcon2;
  final Color colorBack;
  final Color colorName;
  final String name;
  final EdgeInsetsGeometry marginAction;
  final double? wordSpacing, leterSpacing;
  const AppBarTes3({
    Key? key,
    required this.actionIcon,
    required this.name,
    required this.colorBack,
    required this.colorName,
    required this.marginAction,
    this.wordSpacing,
    this.leterSpacing,
    required this.actionIcon2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 59.4.h,
      width: double.infinity,
      child: Row(
        children: [
          SizedBox(
            width: 26.w,
          ),
          ClipOval(
            child: Material(
              child: InkWell(
                onTap: () {
                  Get.back();
                },
                child: Container(
                  height: 19.5.h,
                  width: 19.5.w,
                  color: colorBack,
                  child: Center(
                    child: Image.asset(
                      '$iconsPath/Back.png',
                      width: 8.7.w,
                      height: 8.7.h,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 13.w,
          ),
          Text(
            name,
            style: TextStyle(
              color: colorName,
              fontWeight: FontWeight.w700,
              height: 1.3,
              wordSpacing: wordSpacing,
              letterSpacing: leterSpacing,
              fontSize: 11.sp,
            ),
          ),
          Spacer(),
          Container(
            margin: marginAction,
            child: Center(
              child: InkWell(
                splashColor: Colors.transparent,
                onTap: () {},
                child: Image.asset(
                  actionIcon,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 12.w,
          ),
          Container(
            padding: marginAction,
            child: Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                Center(
                  child: InkWell(
                    splashColor: Colors.transparent,
                    onTap: () {},
                    child: Image.asset(
                      actionIcon2,
                    ),
                  ),
                ),
                Positioned(
                  top: -05,
                  child: Container(
                    height: 13.h,
                    width: 13.w,
                    decoration: BoxDecoration(
                      color: colorBack,
                      border: Border.all(width: 1.5.w, color: Colors.white),
                      borderRadius: BorderRadius.circular(6.5.r),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 27.w,
          ),
        ],
      ),
    );
  }
}
