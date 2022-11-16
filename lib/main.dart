import 'package:flutter/material.dart';
import 'package:flutter_basic_7/pages/12-getx-storage/home.dart';
import 'package:flutter_basic_7/pages/12-getx-storage/login.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  GetStorage.init;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      getPages: [
        // route management
        GetPage(name: '/login', page: () => LoginPage()),
        GetPage(name: '/home', page: () => HomeStorage()),
      ],
    );
  }
}
