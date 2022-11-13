import 'package:get/get.dart';

// todo Variable dan typedata RX
class VarController extends GetxController {
  RxInt dataIntx = 0.obs;
  RxString dataStringx = 'message'.obs;
  RxDouble dataDoublex = 0.0.obs;
  RxBool dataBooleanx = false.obs;
  RxList<int> dataListx = [1, 2, 3].obs;
  RxMap<String, dynamic> dataMapx = {
    'id': 10,
    'name': 'flutter',
    'age': 5,
  }.obs;

  int tambahData = 4;

// todo method testing RxInt
  void decrementInt() => dataIntx--;
  void incrementInt() => dataIntx++;

// todo method testing RxString
  void updateStringx() {
    dataStringx.value = 'data (Updated)';
  }

  void resetStringx() {
    dataStringx.value = 'message';
  }

// todo method testing RxDouble
  void decrementDoublex() => dataDoublex.value--;
  void incrementDoublex() => dataDoublex.value++;

// opsi 1
  void gantiDataBool() {
    if (dataBooleanx.isTrue) {
      dataBooleanx.value = false;
    } else {
      dataBooleanx.value = true;
    }
  }

// opsi 2
  void togglex() => dataBooleanx.toggle();

// todo method testing RxList
  void tambahDataListx() {
    dataListx.add(tambahData);
    tambahData++;
  }

  void kurangDataListx() {
    dataListx.remove(tambahData);
    tambahData--;
  }

// todo method testing RxMap
  void gantiNama() {
    dataMapx['name'] = 'Google';
  }
}
