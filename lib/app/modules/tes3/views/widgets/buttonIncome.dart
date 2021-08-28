import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonIncome extends StatelessWidget {
  final List<Widget> child;
  final Color color;
  const ButtonIncome({
    Key? key,
    required this.child,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: 70.w,
        height: 22.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.r),
          color: color,
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(4.r),
          splashColor: Colors.grey,
          onTap: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: child,
          ),
        ),
      ),
    );
  }
}