import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/5_home_getx_controller.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeGetXStateManagementPage(),
    );
  }
}

// todo Buat Obj/Instansiate controller
final homeC = Get.put(HomeControllerx());

// todo Home GetX State Management
class HomeGetXStateManagementPage extends StatelessWidget {
  const HomeGetXStateManagementPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('State Management GetX'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // todo print data ke text
          // State Reactive Manager
          Obx(
            () => Text(
              '${homeC.dataPantauReactive}',
              style: const TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 30,
          ),

          // todo Button Reactive event click
          ElevatedButton(
              onPressed: () {
                homeC.tambahData();
              },
              child: const Text('Reactive Tambah Data')),
          const SizedBox(
            height: 50,
          ),
          // todo print data ke text
          // Simple State Manager
          GetBuilder<HomeControllerx>(
            builder: (controller) => Text(
              '${controller.dataPantauSimple}',
              style: const TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 30,
          ),

          // todo Button Simple event click
          ElevatedButton(
              onPressed: () {
                homeC.tambahData5();
              },
              child: const Text('Simple Tambah Data kelipatan 5')),
          const SizedBox(
            height: 20,
          ),
          // todo Button Trigger Refresh Screen untuk show value. (Simple state)
          ElevatedButton(
              onPressed: () {
                homeC.refreshTampilan();
              },
              child: const Text('Refresh Tampilan')),
        ],
      )),
    );
  }
}
