import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:uuid/uuid.dart';
import 'package:todolist/mock_data.dart';

part 'todos_event.dart';
part 'todos_state.dart';

class TodosBloc extends Bloc<TodosEvent, TodosState> {
  TodosBloc() : super(TodosState(List));

  final mock = TodoData();

  @override
  Stream<TodosState> mapEventToState(
    TodosEvent event,
  ) async* {
    // TODO: implement mapEventToState
    if(event is InitialEvent){
      yield state.copyWith(await get_data());
    }
  }

  Future<List> get_data() async {
    await Future.delayed(Duration(seconds: 3));
    return mock.todos;
  }
}
