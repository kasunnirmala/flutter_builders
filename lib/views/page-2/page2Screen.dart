import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_builder_test/routes/routes.gr.dart';
import 'package:flutter_builder_test/views/page-2/page2Controller.dart';
import 'package:get/get.dart';

class Page2Screen extends StatefulWidget {
  const Page2Screen({Key? key}) : super(key: key);

  @override
  State<Page2Screen> createState() => _Page2ScreenState();
}

class _Page2ScreenState extends State<Page2Screen> {
  final _page2Controller = Get.put(Page2Controller());
  @override
  void dispose() {
    print("PAGE 2 DISPOSED");
    Get.delete<Page2Controller>();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: Container(
                child: Text("PAGE 2"),
                color: Colors.green,
              ),
            ),
            Expanded(
              child: ElevatedButton(
                child: const Text("Go to Page 1"),
                onPressed: () {
                  context.pushRoute(Page1Route());
                },
                // onPressed: () => Get.toNamed("/page-1"),
              ),
            ),
            Expanded(flex: 10, child: Container(child: AutoRouter()))
          ],
        ),
      ),
    );
  }
}
