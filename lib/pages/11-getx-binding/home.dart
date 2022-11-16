import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeBinding extends StatelessWidget {
  const HomeBinding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX Binding'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
            // cara pindah page agar memory tdk bocor Get.to(() => NameNextPage())
            // onPressed: () => Get.to(() => CounterPage(),
            // todo Bindings route opsi 2 (from Homepage)
            //     binding: BindingsBuilder.put(() => CounterController())),
            // todo opsi 3 Route Management (from Main)
            onPressed: () => Get.toNamed('/counter'), //
            child: const Text('COUNTER PAGE >>')),
      ),
    );
  }
}
