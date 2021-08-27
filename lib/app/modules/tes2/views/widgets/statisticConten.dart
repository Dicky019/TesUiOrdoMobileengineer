import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'statistic.dart';

class StatisticConten extends StatelessWidget {
  const StatisticConten({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 83.5.w,
          height: 83.5.h,
          
          margin: EdgeInsets.only(left:20.16.w,),
          padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 2.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(41.75.r),
            border: Border.all(
              color: Color(0xffC7C7CC),
              width: 1.5.w,
            ),
          ),
          child: Image.asset(
            'assets/images/team-2.png',
            width: 83.5.w,
            height: 83.5.h,
          ),
        ),
        Spacer(),
        Statistics(
          name: 'Rating',
          value: '5.0',
        ),
        Spacer(),
        Statistics(
          name: 'Review',
          value: '100',
        ),
        Spacer(),
        Statistics(
          name: 'Pesanan',
          value: '162',
        ),
        SizedBox(
          width: 29.w,
        )
      ],
    );
  }
}
