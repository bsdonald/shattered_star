import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shattered_star/application/auth/auth_bloc.dart';
import 'package:shattered_star/application/characters/character_actor/character_actor_bloc.dart';
import 'package:shattered_star/application/characters/character_watcher/character_watcher_bloc.dart';
import 'package:shattered_star/injection.dart';
import 'package:shattered_star/presentation/pages/character/character_list_page/widgets/character_list_body.dart';
import 'package:shattered_star/presentation/routes/router.gr.dart';

class CharacterListPage extends StatelessWidget {
  const CharacterListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CharacterWatcherBloc>(
          create: (context) => getIt<CharacterWatcherBloc>()..add(CharacterWatcherEvent.watchAllStarted()),
        ),
        BlocProvider<CharacterActorBloc>(create: (context) => getIt<CharacterActorBloc>()),
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
          BlocListener<CharacterActorBloc, CharacterActorState>(listener: (context, state) {
            state.maybeMap(
              deleteFailure: (state) {
                final snackBar = SnackBar(
                  behavior: SnackBarBehavior.floating,
                  content: Text(
                    state.characterFailure.map(
                      unexpected: (_) => 'Unexpected error occured while deleting, please contact support',
                      insufficientPermission: (_) => 'Insufficient permissions. Please check you are signed in',
                      unableToUpdate: (_) => 'If you are seeing this message, something went completely wrong.',
                    ),
                  ),
                  action: SnackBarAction(
                    label: 'Action',
                    onPressed: () {},
                  ),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              orElse: () {},
            );
          }),
        ],
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Characters'),
            leading: IconButton(
              icon: Icon(Icons.exit_to_app),
              onPressed: () {
                context.read<AuthBloc>().add(const AuthEvent.signedOut());
              },
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.person_add_rounded),
                onPressed: () {
                  AutoRouter.of(context).push(CharacterFormPageRoute());
                },
              ),
            ],
          ),
          body: CharacterListBody(),
        ),
      ),
    );
  }
}
