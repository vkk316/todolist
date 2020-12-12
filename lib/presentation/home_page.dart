import 'package:flutter/material.dart';
import 'package:todolist/mock_data.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  var serve = TodoData();
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: FutureBuilder(
          future: serve.get_data(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.data == null) {
              return CircularProgressIndicator();
            } else {
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (BuildContext context, int id) {
                  return Card(
                    child: Dismissible(
                      child: ListTile(
                        leading: Checkbox(
                          value: snapshot.data[id]["isDone"],
                          onChanged: (bool value) {},
                        ),
                        title: Text(snapshot.data[id]["title"]),
                        subtitle: Text(snapshot.data[id]["desc"]),
                      ),
                      background: Container(color: Colors.red),
                      key: ValueKey(snapshot.data[id]["title"]),
                      onDismissed: ((direction) {
                        return SnackBar(
                          content: Row(
                            children: [
                              FlatButton(onPressed: () {
                                //undo event },
                                child: Text("Undo");
                              })
                            ],
                          ),
                        );
                      }),
                    ),
                  );
                },
              );
            }
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.ballot),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.insert_chart),
            label: 'Statistics',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        //onTap: _onItemTapped,
      ),
    );
  }
}
