import 'package:flutter/material.dart';
import 'package:flutter_basic_7/controllers/12_login_storage_controller.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginPage extends StatelessWidget {
  // onCreate login controller
  final loginC = Get.put(LoginController());
  // storage instance
  final box = GetStorage();
  final keys = 'dataRememberme';

  @override
  Widget build(BuildContext context) {
    // todo getx storage 'fast memory access/ cache'
    if (box.read(keys) != null) {
      loginC.rememberme.value = true;
      loginC.emailC.text = box.read(keys)['email'];
      loginC.passC.text = box.read(keys)['pass'];
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page GetX Storage'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: <Widget>[
          // email text field
          TextField(
            controller: loginC.emailC,
            autocorrect: false,
            textInputAction: TextInputAction.next,
            decoration: const InputDecoration(
              labelText: 'Email',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 20),
          // password text field
          Obx(
            () => TextField(
              controller: loginC.passC,
              autocorrect: false,
              obscureText: loginC.isHidden.value, // isHidden pass
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                labelText: 'Password',
                border: const OutlineInputBorder(),
                suffixIcon: IconButton(
                    onPressed: () => loginC.isHidden.toggle(),
                    icon: const Icon(Icons.remove_red_eye)),
              ),
            ),
          ),
          // todo Checkbox
          Obx(() => CheckboxListTile(
                title: const Text('Remember me'),
                value: loginC.rememberme.value,
                onChanged: (value) {
                  loginC.rememberme.toggle();
                },
                controlAffinity: ListTileControlAffinity.leading,
              )),
          const SizedBox(height: 20),
          // Login Button
          ElevatedButton(
              onPressed: () {
                loginC.login();
              },
              child: const Text('LOGIN'))
        ],
      ),
    );
  }
}
