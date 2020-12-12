import 'package:uuid/uuid.dart';

class Todo {
  final bool isDone;
  final String id;
  final String note;
  final String task;

  Todo(
    this.task, {
    this.isDone = false,
    String note = '',
    String id,
  })  : this.note = note ?? '',
        this.id = id ?? Uuid().v4();

  Todo copyWith({bool complete, String id, String note, String task}) {
    return Todo(
      task ?? this.task,
      isDone: complete ?? this.isDone,
      id: id ?? this.id,
      note: note ?? this.note,
    );
  }

  // static Todo fromEntity(TodoEntity entity) {
  //   return Todo(
  //     entity.task,
  //     complete: entity.complete ?? false,
  //     note: entity.note,
  //     id: entity.id ?? Uuid().generateV4(),
  //   );
  // }
}
