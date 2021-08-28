import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tes_ordo_ui_engineer/app/shared/assets.dart';

// My Widget
import 'catatanConten.dart';

class PesanConten extends StatelessWidget {
  final String namePesan;
  const PesanConten({
    Key? key,
    required this.namePesan,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                height: 68.h,
                width: 68.w,
                padding: EdgeInsets.symmetric(horizontal: 6),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(34.r),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 6),
                        blurRadius: 8,
                        color: Colors.grey.shade200,
                      )
                    ]),
                child: Image.asset(
                  '$imagePath/strawberry.png',
                ),
              ),
              SizedBox(
                width: 14.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    namePesan,
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w600,
                      fontSize: 13.sp,
                    ),
                  ),
                  Text(
                    '100 Gram',
                    style: GoogleFonts.inter(
                      color: Color(0xff979696),
                      fontSize: 9.sp,
                    ),
                  ),
                  Text(
                    'Rp 75.000',
                    style: TextStyle(
                      color: Color(0xff47623F),
                      fontWeight: FontWeight.w600,
                      fontSize: 11.sp,
                    ),
                  ),
                ],
              ),
              Spacer(),
              Text(
                '2 Item',
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w700,
                  fontSize: 10.sp,
                ),
              ),
              SizedBox(
                width: 34.w,
              )
            ],
          ),
          SizedBox(
            height: 8.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 4.5.w,
            ),
            child: Column(
              children: [
                CatatanConten(
                  nameTitle: 'Catatan Item',
                  titleSize: 9.sp,
                  subtitleSize: 8.sp,
                ),Divider(),
              ],
            ),
          ),
          
        ],
      ),
    );
  }
}