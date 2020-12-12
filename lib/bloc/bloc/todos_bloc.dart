import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'todos_event.dart';
part 'todos_state.dart';

class TodosBloc extends Bloc<TodosEvent, TodosState> {
  TodosBloc() : super(TodosInitial());

  @override
  Stream<TodosState> mapEventToState(
    TodosEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
