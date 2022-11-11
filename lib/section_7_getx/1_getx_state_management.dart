import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetXStatePage extends StatelessWidget {
  ////int count = 0;
  // todo Instance/Obj Controller
  final myController = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    print('Build Render'); // Testing Render statefulWidget
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetX State Management"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Text(
            //     //// '$count',
            //   ),
            // todo Obx merubah text value di screen
            Obx(() {
              print("Re-Render Scope Obx"); // Testing state Obx
              return Text(
                //// '$count',
                // todo Panggil attribut countx dan ambil value nya
                '${myController.countx.value}',
                style:
                    const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              );
            }),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // todo Button Minus
                ElevatedButton(
                    onPressed: () {
                      //// count -= 1;
                      //// print("count :$count"); //testing console
                      myController.decrement(); // GetX state
                      // Testing GetX state
                      // print('${myController.decrement()}');
                    },
                    child: const Text('-')),
                // todo Button Plus
                ElevatedButton(
                    onPressed: () {
                      //// count += 1;
                      //// print("count :$count"); //testing console
                      myController.increment(); // GetX state
                    },
                    child: const Text('+')),
              ],
            )
          ],
        ),
      ),
    );
  }
}

// todo Class Controller untuk pengganti setState(){}
class Controller extends GetxController {
  // obs 'state yg selalu di pantau perubahannya
  var countx = 0.obs;
  increment() => countx += 1;
  decrement() => countx -= 1;
}
