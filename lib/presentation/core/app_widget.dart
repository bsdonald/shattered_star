import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shattered_star/application/auth/auth_bloc.dart';
import 'package:shattered_star/injection.dart';
import 'package:shattered_star/presentation/core/ss_colors.dart';
import 'package:shattered_star/presentation/routes/router.gr.dart';
import 'package:shattered_star/presentation/sign_in/sign_in_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  final SSColors colors = getIt<SSColors>();


    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Shattered Star Player's Guide",
        builder: ExtendedNavigator(
          router: Router(),
        ),
        theme: ThemeData.light().copyWith(
          primaryColor: colors.primary,
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: colors.secondary
          ),
          // primaryColor: Colors.orange[200],

          accentColor: colors.secondary,
          inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
      ),
    );
  }
}
