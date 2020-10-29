// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../pages/character_sheet/character_sheet.dart';
import '../pages/home_page/home_page.dart';
import '../sign_in/sign_in_page.dart';
import '../splash/splash_page.dart';
import '../test/test.dart';

class Routes {
  static const String splashPage = '/';
  static const String signInPage = '/sign-in-page';
  static const String homePage = '/home-page';
  static const String test = '/Test';
  static const String reilySheet = '/reily-sheet';
  static const all = <String>{
    splashPage,
    signInPage,
    homePage,
    test,
    reilySheet,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashPage, page: SplashPage),
    RouteDef(Routes.signInPage, page: SignInPage),
    RouteDef(Routes.homePage, page: HomePage),
    RouteDef(Routes.test, page: Test),
    RouteDef(Routes.reilySheet, page: ReilySheet),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SplashPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SplashPage(),
        settings: data,
      );
    },
    SignInPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SignInPage(),
        settings: data,
      );
    },
    HomePage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => HomePage(),
        settings: data,
      );
    },
    Test: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => Test(),
        settings: data,
      );
    },
    ReilySheet: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ReilySheet(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension RouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushSplashPage() => push<dynamic>(Routes.splashPage);

  Future<dynamic> pushSignInPage() => push<dynamic>(Routes.signInPage);

  Future<dynamic> pushHomePage() => push<dynamic>(Routes.homePage);

  Future<dynamic> pushTest() => push<dynamic>(Routes.test);

  Future<dynamic> pushReilySheet() => push<dynamic>(Routes.reilySheet);
}
