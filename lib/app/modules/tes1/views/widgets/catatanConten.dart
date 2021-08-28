import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class CatatanConten extends StatelessWidget {
  final String nameTitle;
  final double titleSize, subtitleSize;
  const CatatanConten({
    Key? key,
    required this.titleSize,
    required this.subtitleSize, required this.nameTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          nameTitle,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: titleSize,
          ),
        ),
        SizedBox(
          height: 1.h,
        ),
        Text(
          '''Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna ullamco laboris nisi ut aliquip ex ea commodo .''',
          style: TextStyle(
            color: Color(0xff8A7F7F),
            fontWeight: FontWeight.w600,
            fontSize: subtitleSize,
          ),
        ),
        SizedBox(height: 3.h),
        
      ],
    );
  }
}
