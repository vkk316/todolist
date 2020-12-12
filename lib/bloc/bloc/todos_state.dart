part of 'todos_bloc.dart';

@immutable
//abstract class TodosState {}

class TodosState {
  TodosState(data);
  // final Uuid id;
  // final title;
  // final desc;
  // final isDone;

  TodosState copyWith(List data) {
     return TodosState(data);
   }
}