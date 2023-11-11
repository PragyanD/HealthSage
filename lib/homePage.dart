import 'package:firstly/util/dialog_box.dart';
import "package:flutter/material.dart";
import './util/todo_tile.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //text controller
  final _controller = TextEditingController();
  List toDoList = [
    ["Do this app", false],
    ["Do Exercise", false]
  ];

  void checkBoxChanged(bool? value, int index){
    setState((){
      toDoList[index][1] = !toDoList[index][1];
    });
  }

  // save new task
  void saveNewTask(){
    print("lmaocalled");
    setState(() {
      toDoList.add([_controller.text, false]);
    });
    Navigator.of(context).pop();
  }
  void createNewTask() {
    showDialog(
      context: context,
      builder: (context){
        return DialogBox(
          
          controller: _controller,
          onSave: saveNewTask,
          onCancel: () => Navigator.of(context).pop(),
        );
      }
    );
    
    
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen[400],
      appBar: AppBar(
        title: Text( "HealthSage" ),
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:() => createNewTask(),
        child: Icon(Icons.add)),
      body: ListView.builder(
        itemCount: toDoList.length,
        itemBuilder: (context, index) {
          return ToDoTile(
            taskName: toDoList[index][0],
            taskCompleted: toDoList[index][1], 
            onChanged: (value) => checkBoxChanged(value,index),
            );
        },
      ),
    );
  }
}

