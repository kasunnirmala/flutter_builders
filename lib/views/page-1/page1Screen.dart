import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Page1Screen extends StatelessWidget {
  const Page1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              child: Text("PAGE 1"),
              color: Colors.red,
            ),
            ElevatedButton(
              child: const Text("Go to Page 2"),
              onPressed: () => Get.toNamed("/page-2/child-1"),
            ),
          ],
        ),
      ),
    );
  }
}
