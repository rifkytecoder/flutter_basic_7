import 'package:flutter/material.dart';
import 'package:flutter_basic_7/controller/7_workers_getx_controller.dart';
import 'package:get/get.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: GetxWorkersPage(),
    );
  }
}

// Todo GetX Workers
class GetxWorkersPage extends StatelessWidget {
  // instance obj controller
  final workC = Get.put(WorkersController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX Workers'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Obx(() => Text(
                  'Terjadi Perubahan : ${workC.dataPantau} x',
                  style: const TextStyle(fontSize: 20),
                )),
            const SizedBox(
              height: 20,
            ),

            // todo Text Inputan
            TextField(
              onChanged: (value) => workC.change(),
              decoration: const InputDecoration(
                labelText: 'Data Inputan',
                border: OutlineInputBorder(),
              ),
            )
          ],
        )),
      ),
    );
  }
}
