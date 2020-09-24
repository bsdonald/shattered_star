import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shattered_star/application/notes/note_watcher/note_watcher_bloc.dart';

class NotesOverviewBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container();
    // BlocBuilder<NoteWatcherBloc, NoteWatcherState>(
    //   builder: (context, state) {
    //     return state.map(initial: (_) => Container(),
    //      loadInProgress: (_) => const Center(child: CircularProgressIndicator()),
    //      loadSuccess: (state) {
    //        return ListView.builder(itemBuilder: (context, index) {
    //          final note = state.notes(index);

    //        },);
    //      },
    //      loadFailure: (_) => ,
    //     );
    //   },
    // );
  }
}