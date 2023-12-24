import 'package:flutter/material.dart';

class time_input extends StatelessWidget {
  DateTime date;
  time_input({super.key, date = DateTime(minute: 25)})

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 200,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3),
        color: Colors.grey[800],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        
        children: [
        Text(
          "Time Remaining",
          style: TextStyle(fontSize: 20),
          ),
        const SizedBox(height: 30,),
        Text(
          minute.toString() + ":"+ seconds.toString(),
          style: TextStyle(fontSize: 30),
        ),
        

      ]),
    );
  }
}
