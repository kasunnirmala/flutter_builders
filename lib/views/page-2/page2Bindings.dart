import 'package:flutter_builder_test/views/page-2/page2Controller.dart';
import 'package:get/get.dart';

class Page2Bindings extends Bindings {
  @override
  void dependencies() {
    Get.put(Page2Controller());
  }
}
