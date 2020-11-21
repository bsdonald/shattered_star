// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../domain/character/character.dart';
import '../pages/character/character_details_page/character_details_page.dart';
import '../pages/character/character_form_page/character_form_page.dart';
import '../pages/character/character_home_page/character_home_page.dart';
import '../pages/character/character_overview_page/character_overview_page.dart';
import '../sign_in/sign_in_page.dart';
import '../splash/splash_page.dart';
import '../test/test.dart';

class Routes {
  static const String splashPage = '/';
  static const String signInPage = '/sign-in-page';
  static const String homePage = '/home-page';
  static const String test = '/Test';
  static const String characterDetailsPage = '/character-details-page';
  static const String characterOverviewPage = '/character-overview-page';
  static const String characterFormPage = '/character-form-page';
  static const all = <String>{
    splashPage,
    signInPage,
    homePage,
    test,
    characterDetailsPage,
    characterOverviewPage,
    characterFormPage,
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
    RouteDef(Routes.characterDetailsPage, page: CharacterDetailsPage),
    RouteDef(Routes.characterOverviewPage, page: CharacterOverviewPage),
    RouteDef(Routes.characterFormPage, page: CharacterFormPage),
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
      final args = data.getArgs<HomePageArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => HomePage(
          key: args.key,
          character: args.character,
        ),
        settings: data,
      );
    },
    Test: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => Test(),
        settings: data,
      );
    },
    CharacterDetailsPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => CharacterDetailsPage(),
        settings: data,
      );
    },
    CharacterOverviewPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => CharacterOverviewPage(),
        settings: data,
      );
    },
    CharacterFormPage: (data) {
      final args = data.getArgs<CharacterFormPageArguments>(
        orElse: () => CharacterFormPageArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => CharacterFormPage(
          key: args.key,
          editedCharacter: args.editedCharacter,
        ),
        settings: data,
        fullscreenDialog: true,
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

  Future<dynamic> pushHomePage({
    Key key,
    @required Character character,
  }) =>
      push<dynamic>(
        Routes.homePage,
        arguments: HomePageArguments(key: key, character: character),
      );

  Future<dynamic> pushTest() => push<dynamic>(Routes.test);

  Future<dynamic> pushCharacterDetailsPage() =>
      push<dynamic>(Routes.characterDetailsPage);

  Future<dynamic> pushCharacterOverviewPage() =>
      push<dynamic>(Routes.characterOverviewPage);

  Future<dynamic> pushCharacterFormPage({
    Key key,
    Character editedCharacter,
  }) =>
      push<dynamic>(
        Routes.characterFormPage,
        arguments: CharacterFormPageArguments(
            key: key, editedCharacter: editedCharacter),
      );
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// HomePage arguments holder class
class HomePageArguments {
  final Key key;
  final Character character;
  HomePageArguments({this.key, @required this.character});
}

/// CharacterFormPage arguments holder class
class CharacterFormPageArguments {
  final Key key;
  final Character editedCharacter;
  CharacterFormPageArguments({this.key, this.editedCharacter});
}
