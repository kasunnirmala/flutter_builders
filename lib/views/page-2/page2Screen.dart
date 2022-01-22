import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Page2Screen extends StatelessWidget {
  const Page2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              child: Text("PAGE 2"),
              color: Colors.green,
            ),
            ElevatedButton(
              child: const Text("Go to Page 1"),
              onPressed: () => Get.toNamed("/page-1"),
            ),
          ],
        ),
      ),
    );
  }
}
