import 'package:flutter/material.dart';
import 'package:flutter_basic_7/pages/10-getx-route-management/page_4.dart';
import 'package:get/get.dart';

class PageTiga extends StatelessWidget {
  const PageTiga({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page Tiga'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'PAGE TIGA',
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
                  Get.to(const PageEmpat());
                },
                child: const Text('Next >>'))
          ],
        ),
      ),
    );
  }
}
