// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../views/about_page.dart' as _i3;
import '../views/default_screen.dart' as _i1;
import '../views/home_page.dart' as _i2;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    DefaultScreenRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.DefaultScreen());
    },
    HomePageRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.HomePage());
    },
    AboutPageRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.AboutPage());
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(DefaultScreenRoute.name, path: '/', children: [
          _i4.RouteConfig(HomePageRoute.name,
              path: '', parent: DefaultScreenRoute.name),
          _i4.RouteConfig(AboutPageRoute.name,
              path: 'about', parent: DefaultScreenRoute.name)
        ])
      ];
}

/// generated route for
/// [_i1.DefaultScreen]
class DefaultScreenRoute extends _i4.PageRouteInfo<void> {
  const DefaultScreenRoute({List<_i4.PageRouteInfo>? children})
      : super(DefaultScreenRoute.name, path: '/', initialChildren: children);

  static const String name = 'DefaultScreenRoute';
}

/// generated route for
/// [_i2.HomePage]
class HomePageRoute extends _i4.PageRouteInfo<void> {
  const HomePageRoute() : super(HomePageRoute.name, path: '');

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [_i3.AboutPage]
class AboutPageRoute extends _i4.PageRouteInfo<void> {
  const AboutPageRoute() : super(AboutPageRoute.name, path: 'about');

  static const String name = 'AboutPageRoute';
}
