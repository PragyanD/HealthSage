

import 'package:firstly/data/database.dart';
import 'package:firstly/util/dialog_box.dart';
import 'package:firstly/util/bottom_nav_bar.dart';
import "package:flutter/material.dart";
import 'package:hive/hive.dart';
import './util/todo_tile.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // reference the hive box
  final _myBox = Hive.box('mybox');
  ToDoDataBase db = ToDoDataBase();
  
  //text controller
  final _controller = TextEditingController();
 @override
  void initState() {
    //first time opening the app
    if (_myBox.get("TODOLIST") == null){
      db.createInitialData();
    }else{
      db.loadData();
    }
    super.initState();
  }

  void checkBoxChanged(bool? value, int index){
    setState((){
      db.toDoList[index][1] = !db.toDoList[index][1];
    });
    db.updateDataBase();
  }
void deleteTask(int index){
 
    setState(() {
      db.toDoList.removeAt(index);
      db.updateDataBase();
    });

  }
  // save new task
  void saveNewTask(){
   
    setState(() {
      db.toDoList.add([_controller.text, false]);
      _controller.clear();
    });
    db.updateDataBase();
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
      bottomNavigationBar: BottonNavBar(),
      floatingActionButton: FloatingActionButton(
        onPressed:() => createNewTask(),
        child: Icon(Icons.add)),
      body: ListView.builder(
        itemCount: db.toDoList.length,
        itemBuilder: (context, index) {
          return ToDoTile(
            taskName: db.toDoList[index][0],
            taskCompleted: db.toDoList[index][1], 
            onChanged: (value) => checkBoxChanged(value,index),
            deleteTask: (context) => deleteTask(index),
            );
        },
      ),
    );
  }
}

