import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shattered_star/domain/core/value_objects.dart';
import 'package:shattered_star/domain/notes/value_objects.dart';

part 'todo_item.freezed.dart';

@freezed
abstract class TodoItem with _$TodoItem {
  const factory TodoItem({
    @required UniqueId id,
    @required TodoName name,
    @required bool done,
  }) = _TodoItem;
}