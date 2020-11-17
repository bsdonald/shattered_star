import 'package:auto_route/auto_route_annotations.dart';
import 'package:shattered_star/presentation/pages/character_details_page/character_details_page.dart';
import 'package:shattered_star/presentation/pages/character_home_page/character_home_page.dart';
import 'package:shattered_star/presentation/sign_in/sign_in_page.dart';
import 'package:shattered_star/presentation/splash/splash_page.dart';
import 'package:shattered_star/presentation/test/test.dart';

@MaterialAutoRouter(
  generateNavigationHelperExtension: true,
  routes: <AutoRoute>[
    MaterialRoute(page: SplashPage, initial: true),
    MaterialRoute(page: SignInPage),
    MaterialRoute(page: HomePage),
    MaterialRoute(page: Test),
    MaterialRoute(page: CharacterDetailsPage),
  ],
 )
class $Router {}
