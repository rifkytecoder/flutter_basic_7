import 'package:flutter/material.dart';
import 'package:flutter_basic_7/controllers/12_login_storage_controller.dart';
import 'package:get/get.dart';

class HomeStorage extends StatelessWidget {
  HomeStorage({super.key});
  final LoginController loginC = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Storage'),
      ),
      // body:
      // floating Button
      floatingActionButton: FloatingActionButton(
        onPressed: (() {
          loginC.logout();
        }),
        child: const Icon(Icons.logout),
      ),
    );
  }
}
