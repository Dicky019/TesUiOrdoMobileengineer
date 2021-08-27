import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AppBarCostum extends StatelessWidget {
  final String actionIcon;
  final Color colorBack;
  final Color colorName;
  final String name;
  const AppBarCostum({
    Key? key, required this.actionIcon, required this.name, required this.colorBack, required this.colorName,
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
                      'assets/icons/Back.png',
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
              letterSpacing: 0.12,
              fontSize: 11.sp,
            ),
          ),
          Spacer(),
          Container(
            margin: EdgeInsets.only(
              top: 21.5.h,
              bottom: 21.h,
            ),
            child: Center(
              child: InkWell(
                splashColor: Colors.transparent,
                onTap:(){},
                child: Image.asset(
                  actionIcon,
                ),
              ),
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
