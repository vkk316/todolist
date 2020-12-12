part of 'todos_bloc.dart';

@immutable
abstract class TodosEvent {}

class AddTaskEvent extends TodosEvent {}

class InitialEvent extends TodosEvent {}

class SaveEvent extends TodosEvent {
  SaveEvent(this.value); //pass อะไรไปบ้าง
  final int value;
}