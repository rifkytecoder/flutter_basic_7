import 'package:flutter/material.dart';
import 'package:flutter_basic_7/controllers/8_dependency_getx_controller.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // todo Get.lazyPut() 'di create di memory(stand by) ketika di nanti di perlukan saja' (dinamis)
  final pageSatuC = Get.lazyPut(() => PageSatuController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: GetxDependencyPage(),
    );
  }
}

// todo Layer 1
class GetxDependencyPage extends StatelessWidget {
  // todo Data Manual
  // Map<String, dynamic> data = {
  //   'name': 'Flutter',
  //   'age': 5,
  // };
  // Map<String, dynamic> data2 = {
  //   'name': 'Dart',
  //   'age': 11,
  // };

  // getx dependency management
  // todo Get.put() 'mendaftarkan suatu dependency class yg ingin kita pakai (statis)
  // final pageSatuC = Get.put(PageSatuController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX Dependency Management'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Text(
          //   // '${data['name']} - ${data['age']} Tahun',
          //   '${pageSatuC.data['name']} - ${pageSatuC.data['age']} Tahun',
          //   style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          // ),
          const SizedBox(
            height: 24,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      // builder: (context) => GetxDependencyPage2(data))); // parsing data variable
                      builder: (context) =>
                          // GetxDependencyPage2(GetxDependencyPage())));
                          GetxDependencyPage2()));
            },
            child: const Text('Next Page 2'),
          ),
        ],
      )),
    );
  }
}

// todo Layer 2
class GetxDependencyPage2 extends StatelessWidget {
  // Constructor
  // GetxDependencyPage2(this.dataPageDua);
  // Map<String, dynamic> dataPageDua; // terima parsing data dari page 1
  // Constructor
  // GetxDependencyPage2(this.dataPageDuax);
  // GetxDependencyPage dataPageDuax; // inject class page 1

  // final pageSatuC = Get.put(PageSatuController());
  // todo Get.find() 'semua yg sudah di put(sekali put) di memory bisa di cari/ambil dgn Get.find()
  PageSatuController pageSatuC = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX Dependency Management 2'),
        centerTitle: true,
      ),
      body: Center(
          child: Text(
        // '${dataPageDua['name']} - ${dataPageDua['age']} Tahunx',
        // '${dataPageDuax.data2['name']} - ${dataPageDuax.data2['age']} Tahunx',
        '${pageSatuC.data2['name']} - ${pageSatuC.data2['age']} Tahunx',
        style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      )),
    );
  }
}
