import 'package:auto_route/auto_route_annotations.dart';
import 'package:shattered_star/presentation/notes/notes_overview.dart/notes_overview_page.dart';
import 'package:shattered_star/presentation/sign_in/sign_in_page.dart';
import 'package:shattered_star/presentation/splash/splash_page.dart';
import 'package:shattered_star/presentation/test/test.dart';

@MaterialAutoRouter(
  generateNavigationHelperExtension: true,
  routes: <AutoRoute>[
    MaterialRoute(page: SplashPage, initial: true),
    MaterialRoute(page: SignInPage),
    MaterialRoute(page: NotesOverviewPage),
    MaterialRoute(page: Test),
  ],
 )
class $Router {}
