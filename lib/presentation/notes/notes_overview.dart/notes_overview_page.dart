import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shattered_star/application/auth/auth_bloc.dart';
import 'package:shattered_star/application/notes/note_actor/note_actor_bloc.dart';
import 'package:shattered_star/application/notes/note_watcher/note_watcher_bloc.dart';
import 'package:shattered_star/injection.dart';

class NotesOverviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<NoteWatcherBloc>(
          create: (context) => getIt<NoteWatcherBloc>()..add(const NoteWatcherEvent.watchAllStarted()),
        ),
        BlocProvider<NoteActorBloc>(
          create: (context) => getIt<NoteActorBloc>(),
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Notes'),
          leading: IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () {
              context.bloc<AuthBloc>().add(const AuthEvent.signedOut());
            },
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.indeterminate_check_box),
              onPressed: () {},
            ),
          ],
        ),
        // body: ,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            //TODO: Navigate to NoteFormPage
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
