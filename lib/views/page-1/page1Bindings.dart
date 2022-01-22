import 'package:flutter_builder_test/views/page-1/page1Controller.dart';
import 'package:get/get.dart';

class Page1Bindings extends Bindings {
  @override
  void dependencies() {
    Get.put(Page1Controller());
  }
}
