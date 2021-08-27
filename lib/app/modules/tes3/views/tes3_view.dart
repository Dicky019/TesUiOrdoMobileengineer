import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/tes3_controller.dart';

class Tes3View extends GetView<Tes3Controller> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tes3View'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Tes3View is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
