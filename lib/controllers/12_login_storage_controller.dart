import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginController extends GetxController {
  var emailC = TextEditingController();
  var passC = TextEditingController();

  RxBool isHidden = true.obs;
  RxBool rememberme = false.obs;

  void login() async {
    // todo GetX Storage 'fast memory access/ cache'
    final box = GetStorage();
    const keys = 'dataRememberme';

    if (emailC.text == 'admin@gmail.com' && passC.text == 'admin') {
      if (box.read(keys) != null) {
        box.remove(keys);
      }
      if (rememberme.isTrue) {
        // simpan data email & password di local memory hp(cache)
        box.write(keys, {
          'email': emailC.text,
          'pass': passC.text,
        });
      }
      Get.offNamed('/home'); // pindah dgn replacement
    } else {
      Get.defaultDialog(
        contentPadding: const EdgeInsets.all(20),
        title: 'Belum Terdaftar',
        middleText: 'Silakan Mendaftar Terlebih Dahulu',
      );
    }
  }

  void logout() {
    Get.offAllNamed('/login'); // pindah dgn replacement
  }
}
