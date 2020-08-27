import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:shattered_star/domain/notes/i_note_repository.dart';
import 'package:shattered_star/domain/notes/note.dart';
import 'package:shattered_star/domain/notes/note_failure.dart';

part 'note_watcher_event.dart';
part 'note_watcher_state.dart';
part 'note_watcher_bloc.freezed.dart';

@injectable
class NoteWatcherBloc extends Bloc<NoteWatcherEvent, NoteWatcherState> {
  NoteWatcherBloc(this._noteRepository) : super(const NoteWatcherState.initial());

  final INoteRepository _noteRepository;

  @override
  Stream<NoteWatcherState> mapEventToState(
    NoteWatcherEvent event,
  ) async* {
    yield* event.map(
      watchAllStarted: (e) async* {
        yield const NoteWatcherState.loadInProgress();
        _noteRepository.watchAll().listen(
              (failureOrNotes) => add(NoteWatcherEvent.notesReceived(failureOrNotes)),
            );
      },
      watchUncompletedStarted: (e) async* {
        // yield const NoteWatcherState.loadInProgress();
      },
      notesReceived: (e) async* {
        yield e.failureOrNotes.fold(
          (f) => NoteWatcherState.loadFailure(f),
          (notes) => NoteWatcherState.loadSuccess(notes),
        );
      },
    );
  }
}
