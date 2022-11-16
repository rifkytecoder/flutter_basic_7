import 'package:flutter/material.dart';
import 'package:flutter_basic_7/controllers/11_binding_counter_controller.dart';
import 'package:get/get.dart';

class CounterPage extends StatelessWidget {
  CounterPage({super.key});
  // call counter controller / onCreate
  // final counterC = Get.put(CounterController()); // opsi static
  CounterController counterC = Get.find(); // opsi dynamis

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Page'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text(
                  '${counterC.data}',
                  style: const TextStyle(
                      fontSize: 50, fontWeight: FontWeight.bold),
                )),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      counterC.decrement();
                    },
                    child: const Text('-')),
                ElevatedButton(
                    onPressed: () {
                      counterC.increment();
                    },
                    child: const Text('+')),
              ],
            )
          ],
        ),
      ),
    );
  }
}
