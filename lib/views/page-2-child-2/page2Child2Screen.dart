import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Page2Child2Screen extends StatelessWidget {
  const Page2Child2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              child: Text("PAGE 2 CHILD 2"),
              color: Colors.yellow,
            ),
            ElevatedButton(
              child: const Text("Go to Page 2"),
              onPressed: () => Get.toNamed("/page-1"),
            ),
          ],
        ),
      ),
    );
  }
}
