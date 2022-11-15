import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageDua extends StatelessWidget {
  const PageDua({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page Dua'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'PAGE DUA',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  // todo back Screen view default Flutter
                  Navigator.of(context).pop();
                },
                child: const Text('<< Back pop')),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  // todo Get.back back Screen view
                  Get.back();
                },
                child: const Text('<< Back Get.back'))
          ],
        ),
      ),
    );
  }
}
