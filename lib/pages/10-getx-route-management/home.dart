import 'package:flutter/material.dart';
import 'package:flutter_basic_7/pages/10-getx-route-management/page_2.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX Route Management'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          ElevatedButton(
              onPressed: (() {
                // todo Pindah Route default dgn memiliki back screen Flutter
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const PageDua()));
              }),
              child: const Text('Page 2 push')),
          const SizedBox(height: 20),
          ElevatedButton(
              onPressed: (() {
                // todo Pindah Route default tanpa back screen Flutter
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const PageDua()));
              }),
              child: const Text('Page 2 pushReplacement')),
          const SizedBox(height: 20),
          ElevatedButton(
              onPressed: (() {
                // todo Get.to Pindah Route/screen view
                Get.toNamed('/page_tigax');
              }),
              child: const Text('Page 3 Get.to')),
          const SizedBox(height: 20),
          ElevatedButton(
              onPressed: (() {
                // todo Get.off Pindah Route/screen view tanpa back
                // Get.off(const PageTiga());
                Get.offNamed('/page_tigax');
              }),
              child: const Text('Page 3 Get.off')),
          const Divider(
            thickness: 3,
          ),
          const SizedBox(height: 20),
          // ElevatedButton(
          //     onPressed: (() {
          //       // todo default flutter pushNamed
          //       Navigator.of(context).pushNamed('page_tiga');
          //     }),
          //     child: const Text('Page 3 pushNamed')),
          // const SizedBox(height: 20),
          // ElevatedButton(
          //     onPressed: (() {
          //       // todo Get.toNamed
          //       Get.toNamed('/page_empatx');
          //     }),
          //     child: const Text('Page 4 Get.toNamed')),
          // const SizedBox(height: 20),
          // ElevatedButton(
          //     onPressed: (() {
          //       // todo Get.toNamed
          //       Get.toNamed('/page_limax');
          //     }),
          //     child: const Text('Page 5')),
          // const SizedBox(height: 20),
        ],
      ),
    );
  }
}
