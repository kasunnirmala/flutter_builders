// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../views/page-1/page1Screen.dart' as _i1;
import '../views/page-2-child-1/page2Child1Screen.dart' as _i3;
import '../views/page-2-child-2/page2Child2Screen.dart' as _i4;
import '../views/page-2/page2Screen.dart' as _i2;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    Page1Route.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.Page1Screen());
    },
    Page2Route.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.Page2Screen());
    },
    Page2Chil1Route.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.Page2Chil1Screen());
    },
    Page2Child2Route.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.Page2Child2Screen());
    }
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig('/#redirect',
            path: '/', redirectTo: 'page-1', fullMatch: true),
        _i5.RouteConfig(Page1Route.name, path: 'page-1'),
        _i5.RouteConfig(Page2Route.name, path: 'page-2', children: [
          _i5.RouteConfig('#redirect',
              path: '',
              parent: Page2Route.name,
              redirectTo: 'child-1',
              fullMatch: true),
          _i5.RouteConfig(Page2Chil1Route.name,
              path: 'child-1', parent: Page2Route.name),
          _i5.RouteConfig(Page2Child2Route.name,
              path: 'child-2', parent: Page2Route.name)
        ])
      ];
}

/// generated route for
/// [_i1.Page1Screen]
class Page1Route extends _i5.PageRouteInfo<void> {
  const Page1Route() : super(Page1Route.name, path: 'page-1');

  static const String name = 'Page1Route';
}

/// generated route for
/// [_i2.Page2Screen]
class Page2Route extends _i5.PageRouteInfo<void> {
  const Page2Route({List<_i5.PageRouteInfo>? children})
      : super(Page2Route.name, path: 'page-2', initialChildren: children);

  static const String name = 'Page2Route';
}

/// generated route for
/// [_i3.Page2Chil1Screen]
class Page2Chil1Route extends _i5.PageRouteInfo<void> {
  const Page2Chil1Route() : super(Page2Chil1Route.name, path: 'child-1');

  static const String name = 'Page2Chil1Route';
}

/// generated route for
/// [_i4.Page2Child2Screen]
class Page2Child2Route extends _i5.PageRouteInfo<void> {
  const Page2Child2Route() : super(Page2Child2Route.name, path: 'child-2');

  static const String name = 'Page2Child2Route';
}
