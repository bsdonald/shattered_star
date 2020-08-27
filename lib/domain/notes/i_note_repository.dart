import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';
import 'package:shattered_star/domain/notes/note.dart';

import 'note_failure.dart';

abstract class INoteRepository {
  //watch notes
  //watch uncompleted notes
  //CUD

  //CRUD

  Stream<Either<NoteFailure, KtList<Note>>> watchAll();
}
