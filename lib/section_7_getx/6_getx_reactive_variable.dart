import 'package:flutter/material.dart';
import 'package:flutter_basic_7/controllers/6_typedata_rx_controller.dart';
import 'package:get/get.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: GetxVariablePage(),
    );
  }
}

class GetxVariablePage extends StatelessWidget {
  final varC = Get.put(VarController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX Variable x Typedata Rx'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          // todo Variable RxInt
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // todo wrap Text Obx
              Obx(() => Text('${varC.dataIntx}')),
              Row(
                children: [
                  // todo Button Minus
                  ElevatedButton(
                      onPressed: () {
                        varC.decrementInt();
                      },
                      child: const Text('-')),
                  const SizedBox(width: 20),

                  // todo Button Plus
                  ElevatedButton(
                      onPressed: () {
                        varC.incrementInt();
                      },
                      child: const Text('+')),
                ],
              ),
            ],
          ),
          const Divider(),

          // todo Variable RxString
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // todo wrap Text Obx
              Obx(() => Text('${varC.dataStringx}')),
              Row(
                children: [
                  // todo Button Update
                  ElevatedButton(
                      onPressed: () {
                        varC.updateStringx();
                      },
                      child: const Text('Update')),
                  const SizedBox(width: 20),

                  // todo Button Reset
                  ElevatedButton(
                      onPressed: () {
                        varC.resetStringx();
                      },
                      child: const Text('Reset')),
                ],
              ),
            ],
          ),
          const Divider(),

          // todo Variable RxDouble
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // todo wrap Text Obx
              Obx(() => Text('${varC.dataDoublex}')),
              Row(
                children: [
                  // todo Button Update
                  ElevatedButton(
                      onPressed: () {
                        varC.decrementDoublex();
                      },
                      child: const Text('-')),
                  const SizedBox(width: 20),

                  // todo Button Reset
                  ElevatedButton(
                      onPressed: () {
                        varC.incrementDoublex();
                      },
                      child: const Text('+')),
                ],
              ),
            ],
          ),
          const Divider(),

          // todo Variable RxBool
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // todo wrap Text Obx
              Obx(() => Text('${varC.dataBooleanx}')),
              Row(
                children: [
                  // todo Button Switch
                  ElevatedButton(
                      onPressed: () {
                        varC.gantiDataBool();
                      },
                      child: const Text('Switch')),
                  const SizedBox(width: 20),

                  // todo Button Toggle
                  ElevatedButton(
                      onPressed: () {
                        varC.togglex();
                      },
                      child: const Text('Toggle')),
                ],
              ),
            ],
          ),
          const Divider(),

          // todo Variable RxList[]
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // todo wrap Text Obx
              Obx(() => Text('${varC.dataListx}')),
              Row(
                children: [
                  // todo Button add data
                  ElevatedButton(
                      onPressed: () {
                        varC.tambahDataListx();
                      },
                      child: const Text('add data')),
                  const SizedBox(width: 20),

                  // todo Button remove data
                  ElevatedButton(
                      onPressed: () {
                        varC.kurangDataListx();
                      },
                      child: const Text('remove data')),
                ],
              ),
            ],
          ),
          const Divider(
            thickness: 3,
          ),

          // todo Variable RxMap{key:value}
          Row(
            children: [
              Expanded(
                // todo wrap ListTile Obx
                child: Obx(
                  () => ListTile(
                    leading:
                        CircleAvatar(child: Text('${varC.dataMapx['id']}')),
                    title: Text('${varC.dataMapx['name']}'),
                    subtitle: Text('${varC.dataMapx['age']}'),
                  ),
                ),
              ),
              // todo Bottom Change Name
              ElevatedButton(
                  onPressed: () {
                    varC.gantiNama();
                  },
                  child: const Text('Change name')),
            ],
          ),
        ],
      ),
    );
  }
}
