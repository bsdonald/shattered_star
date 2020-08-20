import 'package:auto_route/auto_route_annotations.dart';
import 'package:shattered_star/presentation/home/home_page.dart';
import 'package:shattered_star/presentation/sign_in/sign_in_page.dart';
import 'package:shattered_star/presentation/splash/splash_page.dart';

@MaterialAutoRouter(generateNavigationHelperExtension: true)
class $Router {
  @initial
  SplashPage splashPage;
  SignInPage signInPage;
  HomePage homePage;
}