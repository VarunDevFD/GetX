import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pro/controlers/get_x_controller.dart';

class SecondPage extends StatelessWidget {
  final CounterController controller = Get.find();

  SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
      ),
      body: Center(
        child: Obx(() => Text('Count: ${controller.count}')),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.increment,
        child: const Icon(Icons.add),
      ),
    );
  }
}
