import 'package:flutter/material.dart';
import 'package:flutter_builder_test/views/page-1/page1Bindings.dart';
import 'package:flutter_builder_test/views/page-1/page1Screen.dart';
import 'package:flutter_builder_test/views/page-2-child-1/page2Child1Bindings.dart';
import 'package:flutter_builder_test/views/page-2-child-1/page2Child1Screen.dart';
import 'package:flutter_builder_test/views/page-2-child-2/page2Child2Bindings.dart';
import 'package:flutter_builder_test/views/page-2-child-2/page2Child2Screen.dart';
import 'package:flutter_builder_test/views/page-2/page2Bindings.dart';
import 'package:flutter_builder_test/views/page-2/page2Screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/page-1',
      getPages: [
        GetPage(
            name: '/page-1',
            page: () => const Page1Screen(),
            binding: Page1Bindings()),
        GetPage(
            name: '/page-2',
            page: () => const Page2Screen(),
            binding: Page2Bindings(),
            children: [
              GetPage(
                  name: '/child-1',
                  page: () => const Page2Chil1Screen(),
                  binding: Page2Chil1Bindings()),
              GetPage(
                  name: '/child-2',
                  page: () => const Page2Child2Screen(),
                  binding: Page2Child2Bindings()),
            ]),
      ],
    );
  }
}
