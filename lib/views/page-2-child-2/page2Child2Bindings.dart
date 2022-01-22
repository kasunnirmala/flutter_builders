import 'package:flutter_builder_test/views/page-2-child-2/page2Child2Controller.dart';
import 'package:get/get.dart';

class Page2Child2Bindings extends Bindings {
  @override
  void dependencies() {
    Get.put(Page2Child2Controller());
  }
}
