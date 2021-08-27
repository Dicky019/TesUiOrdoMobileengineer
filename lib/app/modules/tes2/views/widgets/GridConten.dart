import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tes_ordo_ui_engineer/app/modules/tes2/controllers/tes2_controller.dart';
import 'package:tes_ordo_ui_engineer/app/shared/widgets/noScrollGlow.dart';

class GridConten extends StatelessWidget {
  const GridConten({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<Tes2Controller>();
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 17.w),
          child: ScrollConfiguration(
            behavior: NoScrollGlow(),
            child: GridView.builder(
              itemCount: controller.gridData.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              itemBuilder: (ctx, i) {
                final data = controller.gridData[i];
                return Container(
                  margin: EdgeInsets.all(1),
                  child: Stack(
                    children: [
                      Image.asset("${data['image']}"),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          height: 18.h,
                          width: double.infinity,
                          color: Colors.black.withOpacity(0.41),
                          padding: EdgeInsets.only(top: 2.h, left: 3.5.w),
                          child: Text(
                            "${data['name']}",
                            style: TextStyle(
                              color: Colors.white,
                              letterSpacing: -0.12,
                              fontWeight: FontWeight.w600,
                              fontSize: 9.sp,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 11.h,
                        width: 34.w,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.center,
                              end: Alignment.centerRight,
                              colors: [
                                Color(0xff202237),
                                Color(0xff595FA0),
                              ],
                            ),
                            borderRadius: BorderRadius.circular(6.r)),
                        margin: EdgeInsets.only(
                          left: 69.0.w,
                          top: 6.h,
                        ),
                      ),
                      Container(
                          padding: EdgeInsets.only(
                            left: 73.56.w,
                            top: 6.5.h,
                          ),
                          child: Icon(
                            Icons.star,
                            size: 9,
                            color: Color(0xffDFB300),
                          )),
                      Container(
                        padding: EdgeInsets.only(
                          left: 82.8.w,
                          top: 7.5.h,
                        ),
                        child: Text(
                          "${data['star']}",
                          style: TextStyle(
                            color: Colors.white,
                            letterSpacing: 0.34,
                            height: 1,
                            fontWeight: FontWeight.w400,
                            fontSize: 8.7.sp,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
