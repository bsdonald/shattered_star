// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../../domain/character/character.dart' as _i10;
import '../pages/character/character_color_page/character_color_page.dart'
    as _i9;
import '../pages/character/character_form_page/character_form_page.dart' as _i8;
import '../pages/character/character_home_page/character_home_page.dart' as _i5;
import '../pages/character/character_list_page/character_list_page.dart' as _i7;
import '../pages/sign_in/sign_in_page.dart' as _i4;
import '../pages/splash/splash_page.dart' as _i3;
import '../test/test.dart' as _i6;

class Router extends _i1.RootStackRouter {
  Router([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    SplashPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i3.SplashPage();
        }),
    SignInPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i4.SignInPage();
        }),
    HomePageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<HomePageRouteArgs>();
          return _i5.HomePage(key: args.key, character: args.character);
        }),
    TestRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i6.Test();
        }),
    CharacterListPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i7.CharacterListPage();
        }),
    CharacterFormPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<CharacterFormPageRouteArgs>(
              orElse: () => const CharacterFormPageRouteArgs());
          return _i8.CharacterFormPage(
              key: args.key, editedCharacter: args.editedCharacter);
        },
        fullscreenDialog: true),
    CharacterColorPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<CharacterColorPageRouteArgs>(
              orElse: () => const CharacterColorPageRouteArgs());
          return _i9.CharacterColorPage(
              key: args.key, character: args.character);
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(SplashPageRoute.name, path: '/'),
        _i1.RouteConfig(SignInPageRoute.name, path: '/sign-in-page'),
        _i1.RouteConfig(HomePageRoute.name, path: '/home-page'),
        _i1.RouteConfig(TestRoute.name, path: '/Test'),
        _i1.RouteConfig(CharacterListPageRoute.name,
            path: '/character-list-page'),
        _i1.RouteConfig(CharacterFormPageRoute.name,
            path: '/character-form-page'),
        _i1.RouteConfig(CharacterColorPageRoute.name,
            path: '/character-color-page')
      ];
}

class SplashPageRoute extends _i1.PageRouteInfo {
  const SplashPageRoute() : super(name, path: '/');

  static const String name = 'SplashPageRoute';
}

class SignInPageRoute extends _i1.PageRouteInfo {
  const SignInPageRoute() : super(name, path: '/sign-in-page');

  static const String name = 'SignInPageRoute';
}

class HomePageRoute extends _i1.PageRouteInfo<HomePageRouteArgs> {
  HomePageRoute({_i2.Key? key, required _i10.Character character})
      : super(name,
            path: '/home-page',
            args: HomePageRouteArgs(key: key, character: character));

  static const String name = 'HomePageRoute';
}

class HomePageRouteArgs {
  const HomePageRouteArgs({this.key, required this.character});

  final _i2.Key? key;

  final _i10.Character character;
}

class TestRoute extends _i1.PageRouteInfo {
  const TestRoute() : super(name, path: '/Test');

  static const String name = 'TestRoute';
}

class CharacterListPageRoute extends _i1.PageRouteInfo {
  const CharacterListPageRoute() : super(name, path: '/character-list-page');

  static const String name = 'CharacterListPageRoute';
}

class CharacterFormPageRoute
    extends _i1.PageRouteInfo<CharacterFormPageRouteArgs> {
  CharacterFormPageRoute({_i2.Key? key, _i10.Character? editedCharacter})
      : super(name,
            path: '/character-form-page',
            args: CharacterFormPageRouteArgs(
                key: key, editedCharacter: editedCharacter));

  static const String name = 'CharacterFormPageRoute';
}

class CharacterFormPageRouteArgs {
  const CharacterFormPageRouteArgs({this.key, this.editedCharacter});

  final _i2.Key? key;

  final _i10.Character? editedCharacter;
}

class CharacterColorPageRoute
    extends _i1.PageRouteInfo<CharacterColorPageRouteArgs> {
  CharacterColorPageRoute({_i2.Key? key, _i10.Character character})
      : super(name,
            path: '/character-color-page',
            args: CharacterColorPageRouteArgs(key: key, character: character));

  static const String name = 'CharacterColorPageRoute';
}

class CharacterColorPageRouteArgs {
  const CharacterColorPageRouteArgs({this.key, this.character});

  final _i2.Key? key;

  final _i10.Character character;
}
