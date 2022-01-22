import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter_builder_test/routes/routes.gr.dart';
import 'package:flutter_builder_test/views/page-2-child-1/page2Child1Controller.dart';
import 'package:get/get.dart';

class Page2Chil1Screen extends StatefulWidget {
  const Page2Chil1Screen({Key? key}) : super(key: key);

  @override
  State<Page2Chil1Screen> createState() => _Page2Chil1ScreenState();
}

class _Page2Chil1ScreenState extends State<Page2Chil1Screen> {
  final _page2Child1Controller = Get.put(Page2Chil1Controller());
  @override
  void dispose() {
    print("PAGE 2 CHILD 1 DISPOSED");
    Get.delete<Page2Chil1Controller>();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            child: Text("PAGE 2 CHILD 1"),
            color: Colors.blue,
          ),
          ElevatedButton(
            child: const Text("Go to Page 1"),
            onPressed: () {
              context.popRoute();
            },
            // onPressed: () => Get.toNamed("/page-1"),
          ),
        ],
      ),
    );
  }
}
