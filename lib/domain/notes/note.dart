import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shattered_star/domain/core/value_objects.dart';
import 'package:shattered_star/domain/notes/todo_item.dart';
import 'package:shattered_star/domain/notes/value_objects.dart';

part 'note.freezed.dart';

@freezed
abstract class Note with _$Note{
  const factory Note({
    @required UniqueId id,
    @required NoteBody body,
    @required NoteColor color,
    @required List3<TodoItem> todos,
  }) = _Note;
}