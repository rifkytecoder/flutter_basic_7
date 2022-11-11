import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'section_7_getx/3_getx_dialog.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: GetxDialogPage(),
    );
  }
}
