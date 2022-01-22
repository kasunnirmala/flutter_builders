import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter_builder_test/routes/routes.gr.dart';
import 'package:flutter_builder_test/views/page-1/page1Controller.dart';
import 'package:get/get.dart';

class Page1Screen extends StatefulWidget {
  const Page1Screen({Key? key}) : super(key: key);

  @override
  State<Page1Screen> createState() => _Page1ScreenState();
}

class _Page1ScreenState extends State<Page1Screen> {
  final _page1Controller = Get.put(Page1Controller());
  @override
  void dispose() {
    print("PAGE 1 DISPOSED");
    Get.delete<Page1Controller>();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Obx(() => _page1Controller.isLoading.value
                ? Text("LOADING....")
                : Text("LOADING FINISHED!")),
            Container(
              child: Text("PAGE 1"),
              color: Colors.red,
            ),
            ElevatedButton(
              child: const Text("Go to Page 2"),
              onPressed: () {
                context.pushRoute(Page2Route());
              },
              // onPressed: () => Get.toNamed("/page-2/child-1"),
            ),
            ElevatedButton(
              child: const Text("Toggle Loading..."),
              onPressed: () {
                _page1Controller.toggleLoading();
              },
              // onPressed: () => Get.toNamed("/page-2/child-1"),
            ),
          ],
        ),
      ),
    );
  }
}
