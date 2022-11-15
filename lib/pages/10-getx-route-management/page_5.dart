import 'package:flutter/material.dart';
import 'package:flutter_basic_7/pages/10-getx-route-management/home.dart';
import 'package:get/get.dart';

class PageLima extends StatelessWidget {
  const PageLima({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page Lima'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'PAGE LIMA',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: const Text('<< Back')),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  // todo Get.offAll kembali ke route yg di inginkan(push replacement) dan menghapus layer yg dilewatinya
                  Get.offAll(const HomePage());
                },
                child: const Text('Back Home page')),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  // todo Get.offAll kembali ke route yg di inginkan(push replacement) dan menghapus layer yg dilewatinya
                  Get.offAllNamed('/homex');
                },
                child: const Text('Back Home page offAllNamed'))
          ],
        ),
      ),
    );
  }
}
