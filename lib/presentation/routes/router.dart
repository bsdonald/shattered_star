import 'package:auto_route/annotations.dart';
import 'package:shattered_star/presentation/pages/character/character_color_page/character_color_page.dart';
import 'package:shattered_star/presentation/pages/character/character_form_page/character_form_page.dart';
import 'package:shattered_star/presentation/pages/character/character_home_page/character_home_page.dart';
import 'package:shattered_star/presentation/pages/character/character_list_page/character_list_page.dart';
import 'package:shattered_star/presentation/pages/sign_in/sign_in_page.dart';
import 'package:shattered_star/presentation/pages/splash/splash_page.dart';
import 'package:shattered_star/presentation/test/test.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute(page: SplashPage, initial: true),
    MaterialRoute(page: SignInPage),
    MaterialRoute(page: HomePage),
    MaterialRoute(page: Test),
    MaterialRoute(page: CharacterListPage),
    MaterialRoute(page: CharacterFormPage, fullscreenDialog: true),
    MaterialRoute(page: CharacterColorPage),
  ],
)
class $Router {}
