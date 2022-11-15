import 'package:flutter/material.dart';
import 'package:flutter_basic_7/pages/10-getx-route-management/page_2.dart';
import 'package:flutter_basic_7/pages/10-getx-route-management/page_3.dart';
import 'package:flutter_basic_7/pages/10-getx-route-management/page_4.dart';
import 'package:flutter_basic_7/pages/10-getx-route-management/page_5.dart';
import 'package:get/get.dart';

import 'pages/10-getx-route-management/home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      // todo route management default Flutter
      routes: {
        'home': (home) => const HomePage(),
        'page_dua': (p1) => const PageDua(),
        'page_tiga': (p2) => const PageTiga(),
        'page_empat': (p3) => const PageEmpat(),
        'page_lima': (p4) => const PageLima(),
      },

      // todo route managemnet GetX getPages
      getPages: [
        GetPage(name: '/homex', page: (() => const HomePage())),
        // GetPage(name: '/page_duax', page: (() => const PageDua())),
        GetPage(name: '/page_tigax', page: (() => const PageTiga())),
        // GetPage(name: '/page_empatx', page: (() => const PageEmpat())),
        // GetPage(name: '/page_limax', page: (() => const PageLima())),
      ],
    );
  }
}
