import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetxBottomSheetPage extends StatelessWidget {
  const GetxBottomSheetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX BottomSheet'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Show BottomSheet'),
          onPressed: () {
            // todo BottomSheet Default Flutter
            // showModalBottomSheet(
            //   context: context,
            //   builder: (context) => Container(
            //     height: 300,
            //     color: Colors.amber,
            //     child: ListView(
            //       children: const [
            //         ListTile(
            //           leading: Icon(Icons.home),
            //           title: Text('Home'),
            //         ),
            //         ListTile(
            //           leading: Icon(Icons.person),
            //           title: Text('Profile'),
            //         ),
            //         ListTile(
            //           leading: Icon(Icons.settings),
            //           title: Text('Setting'),
            //         ),
            //       ],
            //     ),
            //   ),
            // );

            // todo GetX BottomSheet
            Get.bottomSheet(
              Container(
                height: 300,
                color: Colors.pink,
                child: ListView(
                  children: const [
                    ListTile(
                      leading: Icon(Icons.home),
                      title: Text('Home'),
                    ),
                    ListTile(
                      leading: Icon(Icons.person),
                      title: Text('Profile'),
                    ),
                    ListTile(
                      leading: Icon(Icons.settings),
                      title: Text('Setting'),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
