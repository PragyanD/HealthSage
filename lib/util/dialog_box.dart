
import "package:firstly/homePage.dart";
import "package:firstly/util/button1.dart";
import "package:flutter/material.dart";


class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;
   DialogBox({
    super.key, 
    required this.controller,
    required this.onSave,
    required this.onCancel, 
    });
  @override
  void saveNewTask(){
    print("lmaocalled");
    
  }
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[100],
      content: Container(
        alignment: Alignment.center,
        height:120,
        child: Column(children: [
          TextField(
            controller: controller,
            onSubmitted: (_){
              onSave();
            },
            decoration: InputDecoration(
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(3)),
              hintText: "Add a new task"
            ),

          ),
          //padding for save cancel
          const SizedBox(height:30),
          //save and cancel buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Button1(
              text: "Save", 
              onPressed: onSave,
              ),
              const SizedBox(width:10),
            Button1(
              text: "Cancel", 
              onPressed: onCancel,
            ),
            
          ],)
        ],))
    );
  }
}