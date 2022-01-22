import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Page2Chil1Screen extends StatelessWidget {
  const Page2Chil1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              child: Text("PAGE 2 CHILD 1"),
              color: Colors.blue,
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
