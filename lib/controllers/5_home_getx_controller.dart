import 'package:get/get.dart';

class HomeControllerx extends GetxController {
  // Pilar 1 dari GetX State Management  Reactive dan Simple
  // todo variable ini biar bisa selalu dipantau setiap kali ada perubahan
  var dataPantauReactive = 0.obs; // untuk reactive state manager

  int dataPantauSimple = 0; // untuk simple state manager

  void tambahData() {
    dataPantauReactive += 1;
    // dataPantauSimple += 1;
  }

  // todo fungsi tambah data kelipatan 5
  void tambahData5() {
    dataPantauSimple += 1;
    if (dataPantauSimple % 5 == 0) {
      update();
    }
  }

  // todo fungsi merefresh tampilan agar nilainya terupdate ini berlaku hanya di Simple State manager
  void refreshTampilan() {
    update();
  }
}
