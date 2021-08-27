import 'package:get/get.dart';

import '../controllers/tes2_controller.dart';

class Tes2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Tes2Controller>(
      () => Tes2Controller(),
    );
  }
}
