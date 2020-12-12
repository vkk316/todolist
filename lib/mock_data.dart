import 'package:uuid/uuid.dart';
import 'package:todolist/model/todo.dart';

class TodoData {
  final todos = [{
    "id": Uuid().v4(),
    "title": "Watching Netflix",
    "desc": "Don't get me wrong, I just learned startup stategy",
    "isDone": true,
  },
  {
    "id": Uuid().v4(),
    "title": "Data Communication Assingment",
    "desc": "Don't forget that!!,",
    "isDone": false,
  },
  {
    "id": Uuid().v4(),
    "title": "Sending messeng to Officer Tha-pae distric",
    "desc": "I couldn't ....",
    "isDone": false,
  },
  {
    "id": Uuid().v4(),
    "title": "Ask for 2hand Labtop",
    "desc": "For .......................",
    "isDone": true,
  },
  {
    "id": Uuid().v4(),
    "title": "Doing some sh*t",
    "desc": "I have no idea",
    "isDone": true,
  }
  ];

  Future<List> get_data() async {
    await Future.delayed(Duration(seconds: 3));
    return this.todos;
  }
}