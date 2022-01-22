import 'package:auto_route/annotations.dart';
import 'package:flutter_builder_test/views/page-1/page1Screen.dart';
import 'package:flutter_builder_test/views/page-2-child-1/page2Child1Screen.dart';
import 'package:flutter_builder_test/views/page-2-child-2/page2Child2Screen.dart';
import 'package:flutter_builder_test/views/page-2/page2Screen.dart';

// @CupertinoAutoRouter
// @AdaptiveAutoRouter
// @CustomAutoRouter
@MaterialAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: <AutoRoute>[
    AutoRoute(page: Page1Screen, initial: true, path: 'page-1'),
    AutoRoute(page: Page2Screen, path: 'page-2', children: [
      AutoRoute(page: Page2Chil1Screen, initial: true, path: 'child-1'),
      AutoRoute(page: Page2Child2Screen, initial: true, path: 'child-2'),
    ]),
  ],
)
class $AppRouter {}
