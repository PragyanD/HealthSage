import "package:flutter/material.dart";
import "package:flutter_slidable/flutter_slidable.dart";

class ToDoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;
  Function(BuildContext)? deleteTask;

  ToDoTile({
    super.key,
    required this.taskName,
    required this.taskCompleted,
    required this.onChanged,
    required this.deleteTask,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0, right: 30, top: 25),
      child: Slidable( 
        endActionPane: ActionPane(
          motion: StretchMotion(),
          children: [
            SlidableAction(
              onPressed: deleteTask,
              icon: Icons.delete,
              backgroundColor: Colors.red.shade300,
              borderRadius: BorderRadius.circular(12),
              )

        ],),
        child: Container(
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            //color: Colors.yellow[600],
            color: Colors.green[700],
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              //checkbox
              Checkbox(
                value: taskCompleted,
                onChanged: onChanged,
                activeColor: Colors.green[700],
              ),
              //task name
              Text(
                taskName, 
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  decoration: taskCompleted?TextDecoration.lineThrough:TextDecoration.none,
                  )
      
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
 
