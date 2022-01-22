import 'package:flutter_builder_test/views/page-2-child-1/page2Child1Controller.dart';
import 'package:get/get.dart';

class Page2Chil1Bindings extends Bindings {
  @override
  void dependencies() {
    Get.put(Page2Chil1Controller());
  }
}
