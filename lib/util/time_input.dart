import 'package:flutter/material.dart';

class time_input extends StatelessWidget {
  int minute;
  int seconds;
  time_input({super.key, this.minute = 25, this.seconds = 0});

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
          "Time left",
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
