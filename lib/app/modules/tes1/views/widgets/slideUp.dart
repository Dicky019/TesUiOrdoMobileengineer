import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// My Widget
import 'package:tes_ordo_ui_engineer/app/shared/assets.dart';
import 'package:tes_ordo_ui_engineer/app/shared/widgets/noScrollGlow.dart';
import 'catatanConten.dart';
import 'pesanConten.dart';

class SlideUp extends StatelessWidget {
  const SlideUp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 760.h,
      width: 360.w,
      child: DraggableScrollableSheet(
          initialChildSize: 0.21,
          minChildSize: 0.21,
          maxChildSize: 0.4,
          builder: (ctx, s) {
            return Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25.r),
                  boxShadow: [
                    BoxShadow(blurRadius: 2, color: Colors.grey)
                  ]),
              child: Container(
                padding: EdgeInsets.only(top: 8.h,),
                child: Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: ScrollConfiguration(
                        behavior: NoScrollGlow(),
                        child: ListView(
                          controller: s,
                          children: [
                            Stack(
                              children: [
                                Center(
                                  child: Container(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Color(0XFF47623F),
                                        borderRadius:
                                            BorderRadius.circular(3.r),
                                      ),
                                      margin: EdgeInsets.symmetric(
                                          horizontal: 130.w),
                                      height: 3.5.h,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 10,
                      child: ScrollConfiguration(
                        behavior: NoScrollGlow(),
                        child: ListView(
                          controller: s,
                          children: [
                            Row(
                              crossAxisAlignment:
                                  CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 188.h,
                                  width: 267.w,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        top: -33.5.h,
                                        left: -10.w,
                                        child: Container(
                                          width: 122.w,
                                          child: Image.asset(
                                            '$imagePath/photo.png',
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        top: 2.h,
                                        left: 14.w,
                                        child: Container(
                                          width: 55.w,
                                          child: Image.asset(
                                            '$imagePath/circlePhoto.png',
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 83.w,
                                        top: 15.h,
                                        child: Text(
                                          'David Mores',
                                          style: GoogleFonts.openSans(
                                              fontWeight:
                                                  FontWeight.w600,
                                              fontSize: 13.sp),
                                        ),
                                      ),
                                      Positioned(
                                        left: 83.w,
                                        top: 35.h,
                                        child: Text('B 1201 FA',
                                            style: GoogleFonts.openSans(
                                              fontWeight:
                                                  FontWeight.w700,
                                              color: Color(0xff92D274),
                                            )),
                                      ),
                                      Positioned(
                                        left: 33.w,
                                        top: 80.h,
                                        child: Container(
                                          width: 25.w,
                                          color: Colors.white,
                                          child: Image.asset(
                                            '$iconsPath/clock.png',
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 34.w,
                                        top: 140.h,
                                        child: Container(
                                          width: 25.w,
                                          color: Colors.white,
                                          child: Image.asset(
                                            '$iconsPath/pin2.png',
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 44.w,
                                        top: 110.h,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            ClipOval(
                                              child: Container(
                                                width: 3.w,
                                                height: 3.h,
                                                color: Color(0xff898EBC)
                                                    .withOpacity(0.25),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 6.h,
                                            ),
                                            ClipOval(
                                              child: Container(
                                                width: 4.w,
                                                height: 4.h,
                                                color: Color(0xff898EBC)
                                                    .withOpacity(0.5),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 6.h,
                                            ),
                                            ClipOval(
                                              child: Container(
                                                width: 5.w,
                                                height: 5.h,
                                                color: Color(0xff898EBC)
                                                    .withOpacity(0.75),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Positioned(
                                        left: 65.w,
                                        top: 73.h,
                                        child: Text(
                                          'Status',
                                          style: GoogleFonts.openSans(
                                            fontSize: 12.sp,
                                            color: Color(0xff47623F),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 65.w,
                                        top: 92.h,
                                        child: Text(
                                          'Sedang mengambil barang',
                                          style: GoogleFonts.openSans(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 13.sp,
                                            color: Color(0xff061737),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 65.w,
                                        top: 133.h,
                                        child: Text(
                                          'Alamat Anda',
                                          style: GoogleFonts.openSans(
                                            fontSize: 12.sp,
                                            color: Color(0xff47623F),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 65.w,
                                        top: 154.h,
                                        child: Text(
                                          'Taman Indah Dago No. 612',
                                          style: GoogleFonts.openSans(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 13.sp,
                                            color: Color(0xff061737),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 14),
                                  child: Container(
                                    height: 65.h,
                                    width: 65.w,
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 16.w,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(32.5.r),
                                      boxShadow: [
                                        BoxShadow(
                                          offset: Offset(0, 4),
                                          blurRadius: 8,
                                          spreadRadius: 2,
                                          color: Colors.blueAccent.shade100.withOpacity(0.35),
                                        )
                                      ],
                                      gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          Color(0xff3AB648),
                                          Color(0xff526430)
                                        ],
                                      ),
                                    ),
                                    child: Image.asset(
                                      '$iconsPath/messange.png',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding:  EdgeInsets.symmetric(
                                  horizontal: 14.0.w),
                              child: Text(
                                'Pesanan',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12.sp,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
                            PesanConten(
                              namePesan: 'Strawberry',
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
                            PesanConten(
                              namePesan: 'Nanas',
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 14.5.w,
                              ),
                              child: CatatanConten(
                                titleSize: 12.sp,
                                subtitleSize: 9.sp, nameTitle: 'Catatan Pesanan',
                              ),
                            ),
                            SizedBox(
                              height: 100.h,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}