import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'section_7_getx/2_getx_snackbar.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SnackBarPage(),
    );
  }
}

class SnackBarPage extends StatelessWidget {
  const SnackBarPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetxSnackBarPage();
  }
}
