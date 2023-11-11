import "package:flutter/material.dart";

class ToDoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;

  ToDoTile({
    super.key,
    required this.taskName,
    required this.taskCompleted,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0, right: 30, top: 25),
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
    );
  }
}
