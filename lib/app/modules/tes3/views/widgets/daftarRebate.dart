import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tes_ordo_ui_engineer/app/modules/tes3/controllers/tes3_controller.dart';

// My widget
import 'columnIncome.dart';

class DaftarRebate extends StatelessWidget {
  const DaftarRebate({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<Tes3Controller>();
    return Column(
      children: List.generate(controller.text.length, (index) {
        final data = controller.text[index];
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 9.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ColumnIncome(
                fontWeight: FontWeight.w500,
                subTitle: '#EC1201211',
                title: 'ID Transaksi',
                color: Color(0xff3D6670),
              ),
              ColumnIncome(
                fontWeight: FontWeight.w600,
                subTitle: 'Rp. 150.000',
                title: 'Rebate',
                color: controller.textIncomeColor,
              ),
              ColumnIncome(
                fontWeight: FontWeight.w600,
                subTitle: '1${data} Juli 2021',
                title: 'Tanggal',
                color: controller.textIncomeColor,
              ),
            ],
          ),
        );
      }),
    );
  }
}
