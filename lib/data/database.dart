import 'package:hive/hive.dart';

class ToDoDataBase{
  List toDoList = [];
  // refer to box
  final _myBox = Hive.box('mybox');

  void createInitialData(){
    toDoList = [
      ['Go Gym', false],
      ['Randi rona', true],
    ]; 
   }
   void loadData(){
    toDoList = _myBox.get("TODOLIST");
   }
   void updateDataBase(){
    _myBox.put("TODOLIST", toDoList);
   }
}
