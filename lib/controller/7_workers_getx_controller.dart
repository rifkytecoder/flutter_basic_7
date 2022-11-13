import 'package:get/get.dart';

class WorkersController extends GetxController {
  RxInt dataPantau = 0.obs;

  void change() => dataPantau++;

// Pilar 1 dari GetX
// todo Workers untuk menganalisis suatu perubahan/state
  @override
  void onInit() {
    // ever(dataPantau, (data) => print('Memantau selama ada Perubahan'));
    // once(dataPantau, (data) => print('Memantau Perubahan hanya sekali'));
    // debounce(dataPantau, (data) => print('Memantau 2 detik saat tdk ada perubahan'),
    //     time: const Duration(seconds: 2));
    interval(dataPantau, (data) => print('pantau 2 detik saat ada perubahan'),
        time: const Duration(seconds: 2));

    super.onInit();
  }
}

// callbacknya bebas memakai fungsi apa dlm contoh hanya fungsi print()
