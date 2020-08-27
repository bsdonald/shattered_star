import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';
import 'package:shattered_star/domain/notes/note.dart';
import 'package:shattered_star/domain/notes/note_failure.dart';


abstract class INoteRepository {
  //CUD

  //CRUD

  //watch notes
  Stream<Either<NoteFailure, KtList<Note>>> watchAll();
  //watch uncompleted notes
  Stream<Either<NoteFailure, KtList<Note>>> watchUncompleted();
  Future<Either<NoteFailure, Unit>> create(Note note);
  Future<Either<NoteFailure, Unit>>update(Note note);
  Future<Either<NoteFailure, Unit>> delete(Note note);
}
