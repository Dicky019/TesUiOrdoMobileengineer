import 'package:get/get.dart';

import 'package:tes_ordo_ui_engineer/app/modules/home/bindings/home_binding.dart';
import 'package:tes_ordo_ui_engineer/app/modules/home/views/home_view.dart';
import 'package:tes_ordo_ui_engineer/app/modules/tes1/bindings/tes1_binding.dart';
import 'package:tes_ordo_ui_engineer/app/modules/tes1/views/tes1_view.dart';
import 'package:tes_ordo_ui_engineer/app/modules/tes2/bindings/tes2_binding.dart';
import 'package:tes_ordo_ui_engineer/app/modules/tes2/views/tes2_view.dart';
import 'package:tes_ordo_ui_engineer/app/modules/tes3/bindings/tes3_binding.dart';
import 'package:tes_ordo_ui_engineer/app/modules/tes3/views/tes3_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.TES2,
      page: () => Tes2View(),
      binding: Tes2Binding(),
    ),
    GetPage(
      name: _Paths.TES1,
      page: () => Tes1View(),
      binding: Tes1Binding(),
    ),
    GetPage(
      name: _Paths.TES3,
      page: () => Tes3View(),
      binding: Tes3Binding(),
    ),
  ];
}
