import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shattered_star/application/auth/auth_bloc.dart';
import 'package:shattered_star/application/home/bloc/home_page_bloc.dart';
import 'package:shattered_star/application/notes/note_actor/note_actor_bloc.dart';
import 'package:shattered_star/application/notes/note_watcher/note_watcher_bloc.dart';
import 'package:shattered_star/injection.dart';
import 'package:shattered_star/presentation/core/ss_colors.dart';
import 'package:shattered_star/presentation/pages//character/character_home_page/widgets/home_body.dart';
import 'package:shattered_star/presentation/routes/router.gr.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<HomePageBloc>(
          create: (context) => HomePageBloc(),
        )
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<AuthBloc, AuthState>(
            listener: (context, state) {
              state.maybeMap(
                unauthenticated: (_) => ExtendedNavigator.of(context).replace(Routes.signInPage),
                orElse: () {},
              );
            },
          ),
        ],
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Home'),
            leading: IconButton(
              icon: Icon(Icons.exit_to_app),
              onPressed: () {
                ExtendedNavigator.of(context).replace(Routes.characterOverviewPage);
              },
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.indeterminate_check_box),
                onPressed: () {},
              ),
            ],
          ),
          body: HomeBody(),
        ),
      ),
    );
  }
}
