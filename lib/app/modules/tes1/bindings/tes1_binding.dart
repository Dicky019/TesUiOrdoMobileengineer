import 'package:get/get.dart';

import '../controllers/tes1_controller.dart';

class Tes1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Tes1Controller>(
      () => Tes1Controller(),
    );
  }
}
