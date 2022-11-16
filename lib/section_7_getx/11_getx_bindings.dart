import 'package:flutter/material.dart';
import 'package:flutter_basic_7/bindings/11_counter_bindings.dart';
import 'package:flutter_basic_7/pages/11-getx-binding/counter.dart';
import 'package:flutter_basic_7/pages/11-getx-binding/home.dart';
import 'package:get/get.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeBinding(),
      // todo Route Management
      getPages: [
        GetPage(
          name: '/counter',
          page: () => CounterPage(),
          // todo  todo single binding
          // binding: BindingsBuilder.put(() => CounterController()),
          // todo class (list) bindings
          binding: CounterBindings(),
        ),

        // todo example. jgn dibuat sperti ini tpi buat class binding sendiri
        //// GetPage(
        ////   name: '/counter',
        ////   page: () => CounterPage(),
        //   // binding: BindingsBuilder.put(() => CounterController()),
        ////   bindings: [
        ////     BindingsBuilder.put(() => CounterController()),
        //     // BindingsBuilder.put(() => AnyController()),
        //     // BindingsBuilder.put(() => AnyController()),
        //     // BindingsBuilder.put(() => AnyController()),
        ////   ]
        //// ),
      ],
    );
  }
}
