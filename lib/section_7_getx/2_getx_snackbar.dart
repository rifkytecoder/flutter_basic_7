import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetxSnackBarPage extends StatelessWidget {
  const GetxSnackBarPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX Snack Bar'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // todo SnackBar Default Flutter
            // ScaffoldMessenger.of(context).showSnackBar(
            //   SnackBar(
            //     content: const Text('SnackBar show'),
            //     action: SnackBarAction(label: "Cancel", onPressed: () {}),
            //   ),
            // );

            // todo SnackBar GetX
            Get.snackbar(
                'Notification', ' Selamat anda sekarang belajar SnackBar',
                snackPosition: SnackPosition.BOTTOM,
                mainButton: TextButton(
                    onPressed: () => print('Klick'),
                    child: const Text('Cancel')));
          },
          child: const Text('SnackBar'),
        ),
      ),
    );
  }
}
