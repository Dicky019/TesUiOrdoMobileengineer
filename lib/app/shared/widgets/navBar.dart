import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NavBar extends StatelessWidget {
  final MainAxisAlignment mainAxisAlignment;
  final List<Map> listData;
  final double padding;
  const NavBar({
    Key? key,
    required this.listData,
    this.mainAxisAlignment = MainAxisAlignment.spaceAround, this.padding = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 68.h,
      padding: EdgeInsets.symmetric(horizontal: padding.w),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: mainAxisAlignment,
        children: listData.map(
          (e) {
            return ClipOval(
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    height: 50.h,
                    width: 50.w,
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
                    child: Image.asset(
                      e['image'],
                      height: 20.h,
                      width: 20.w,
                    ),
                  ),
                ),
              ),
            );
          },
        ).toList(),
      ),
    );
  }
}
