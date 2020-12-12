part of 'todos_bloc.dart';

@immutable
abstract class TodosEvent {}

class InitialEvent extends TodosEvent {}

class AddTaskEvent extends TodosEvent {
  AddTaskEvent(this.title, this.desc, this.isDone); //pass อะไรไปบ้าง
  final title;
  final desc;
  final isDone;
}
class DeleteTaskEvent extends TodosEvent {
  DeleteTaskEvent(this.id);
  final Uuid id;
}
class EditTaskEvent extends TodosEvent{
  EditTaskEvent(this.id, this.title, this.desc, this.isDone);
  final Uuid id;
  final title;
  final desc;
  final isDone;
}