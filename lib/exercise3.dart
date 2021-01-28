import 'package:flutter/material.dart';

class Exercise3 extends StatefulWidget {
  @override
  _Exercise3State createState() => _Exercise3State();
}

class _Exercise3State extends State<Exercise3> {
  var todos = <Todo>[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Exercise 3'),
        ),
        body: ListView.builder(
            itemCount: todos.length,
            itemBuilder: (context, index) {
              return ItemToto(
                  item: todos[index],
                  onTapDone: (value) {
                    setState(() {
                      todos[index].isDone = value;
                    });
                  });
            }),
        floatingActionButton: FloatingActionButton(
            elevation: 0.0,
            child: Icon(Icons.add),
            backgroundColor: Colors.blue,
            onPressed: () {
              setState(() {
                var todo = Todo()
                  ..title = 'Task ${todos.length + 1}'
                  ..isDone = false;
                todos.add(todo);
              });
            }));
  }
}

class ItemToto extends StatelessWidget {
  final Todo item;
  final Function onTapDone;
  ItemToto({@required this.item, @required this.onTapDone});
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(8),
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.grey, width: 1),
            color: item.isDone ? Colors.grey.withOpacity(0.5) : Colors.white),
        child: Row(
          children: [
            Expanded(
                child: Text(
              item.title,
              style: TextStyle(
                  decoration: item.isDone
                      ? TextDecoration.lineThrough
                      : TextDecoration.none),
            )),
            Checkbox(value: item.isDone, onChanged: onTapDone)
          ],
        ));
  }
}

class Todo {
  String title;
  bool isDone;
}
