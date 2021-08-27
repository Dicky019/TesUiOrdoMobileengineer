import 'package:get/get.dart';

import '../controllers/tes3_controller.dart';

class Tes3Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Tes3Controller>(
      () => Tes3Controller(),
    );
  }
}
