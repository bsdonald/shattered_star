import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/src/collection/kt_list.dart';
import 'package:dartz/dartz.dart';
import 'package:shattered_star/domain/notes/i_note_repository.dart';
import 'package:shattered_star/domain/notes/note_failure.dart';
import 'package:shattered_star/domain/notes/note.dart';

@LazySingleton(as: INoteRepository)
class NoteRepository implements INoteRepository {

  final Firestore _firestore;

  NoteRepository(this._firestore);
  @override
  Stream<Either<NoteFailure, KtList<Note>>> watchAll() {
    // TODO: implement watchAll
    throw UnimplementedError();
  }

  @override
  Stream<Either<NoteFailure, KtList<Note>>> watchUncompleted() {
    // TODO: implement watchUncompleted
    throw UnimplementedError();
  }

  @override
  Future<Either<NoteFailure, Unit>> create(Note note) {
      // TODO: implement create
      throw UnimplementedError();
    }
  
    @override
    Future<Either<NoteFailure, Unit>> delete(Note note) {
      // TODO: implement delete
      throw UnimplementedError();
    }
  
    @override
    Future<Either<NoteFailure, Unit>> update(Note note) {
    // TODO: implement update
    throw UnimplementedError();
  }
}