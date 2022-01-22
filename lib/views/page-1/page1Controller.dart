import 'package:get/get.dart';

class Page1Controller extends GetxController {
  var isLoading = false.obs;

  toggleLoading() async {
    // await Future.delayed(const Duration(seconds: 2), () {});
    isLoading.value = !isLoading.value;
  }
}
