import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter_builder_test/routes/routes.gr.dart';
import 'package:flutter_builder_test/views/page-2-child-2/page2Child2Controller.dart';
import 'package:get/get.dart';

class Page2Child2Screen extends StatefulWidget {
  const Page2Child2Screen({Key? key}) : super(key: key);

  @override
  State<Page2Child2Screen> createState() => _Page2Child2ScreenState();
}

class _Page2Child2ScreenState extends State<Page2Child2Screen> {
  final _page2Child2Controller = Get.put(Page2Child2Controller());
  @override
  void dispose() {
    print("PAGE 2 CHILD 2 DISPOSED");
    Get.delete<Page2Child2Controller>();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            child: Text("PAGE 2 CHILD 2"),
            color: Colors.yellow,
          ),
          ElevatedButton(
            child: const Text("Go to Page 2"),
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
