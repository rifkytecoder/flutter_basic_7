import 'package:flutter_basic_7/controllers/11_binding_counter_controller.dart';
import 'package:get/get.dart';

// todo Class list Bindings
class CounterBindings extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => CounterController());
    // Get.lazyPut(() => AnyController());
    // Get.lazyPut(() => AnyController());
    // Get.lazyPut(() => AnyController());
    // Get.lazyPut(() => AnyController());
    // Get.lazyPut(() => AnyController());
    // Get.lazyPut(() => AnyController());
    // More controller...
  }
}
