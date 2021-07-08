import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shattered_star/application/auth/auth_bloc.dart';
import 'package:shattered_star/application/home/bloc/home_page_bloc.dart';
import 'package:shattered_star/domain/character/character.dart';
import 'package:shattered_star/presentation/pages//character/character_home_page/widgets/home_body.dart';
import 'package:shattered_star/presentation/routes/router.gr.dart';

class HomePage extends StatelessWidget {
  final Character character;

  const HomePage({Key? key, required this.character}) : super(key: key);
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
                unauthenticated: (_) => AutoRouter.of(context).replace(const SignInPageRoute()),
                orElse: () {},
              );
            },
          ),
        ],
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Home'),
            backgroundColor: character.tertiaryGradientColor.getOrCrash(),
            leading: IconButton(
              icon: Icon(Icons.exit_to_app),
              onPressed: () {
                AutoRouter.of(context).replace(const CharacterListPageRoute());
              },
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.indeterminate_check_box),
                onPressed: () {},
              ),
            ],
          ),
          body: HomeBody(character: character),
          backgroundColor: character.primaryGradientColor.getOrCrash(),
        ),
      ),
    );
  }
}
