import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetxDialogPage extends StatelessWidget {
  const GetxDialogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX Dialog'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            print('Klick');

            // todo Dialog Default Flutter
            // showDialog(
            //   context: context,
            //   builder: (context) => AlertDialog(
            //     shape: RoundedRectangleBorder(
            //         borderRadius: BorderRadius.circular(15)),
            //     title: const Text('AlertDialog'),
            //     content: const Text(
            //         'Ini adalah sebuah description dari AlertDialog'),
            //     actions: [
            //       TextButton(onPressed: () {}, child: const Text('Oke')),
            //       TextButton(onPressed: () {}, child: const Text('Cancel')),
            //     ],
            //   ),
            // );

            //todo GetX Dialog Opsi 1
            Get.defaultDialog(
              title: 'AlertDialog',
              middleText: 'Ini adalah sebuah description dari GetX AlertDialog',
              actions: [
                TextButton(onPressed: () {}, child: const Text('Oke')),
                TextButton(onPressed: () {}, child: const Text('Cancel'))
              ],
            );

            // todo Opsi 2
            // Get.dialog(
            //   AlertDialog(
            //     shape: RoundedRectangleBorder(
            //         borderRadius: BorderRadius.circular(15)),
            //     title: const Text('AlertDialog'),
            //     content: const Text(
            //         'Ini adalah sebuah description dari Getx AlertDialog'),
            //     actions: [
            //       TextButton(onPressed: () {}, child: const Text('Oke')),
            //       TextButton(onPressed: () {}, child: const Text('Cancel')),
            //     ],
            //   ),
            // );
          },
          child: const Text('Show AlertDialog'),
        ),
      ),
    );
  }
}
