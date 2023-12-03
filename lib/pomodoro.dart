import "dart:async";
import "package:firstly/util/time_input.dart";

import 'util/header1.dart';
import "package:flutter/material.dart";
class pomodoroPage extends StatefulWidget {
  const pomodoroPage({super.key});

  @override
  State<pomodoroPage> createState() => _pomodoroPageState();
}

class _pomodoroPageState extends State<pomodoroPage> {
  //pomodoro duration(25 minutes)
  static const int pomodoroDuration = 25*60;
  Timer? _timer;
  int _start = 25 * 60;
  
  void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
          });
        } else {
          setState(() {
            _start--;
          });
        }
      }
  );
    
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Center(
        child: Text('Pomodoro'),
        ),
        elevation: 0, 
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.refresh))
        ],

      ),
      
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},//modify
        backgroundColor: Colors.red[400],
        hoverColor: Colors.green[300],
        elevation: 5,

      ),
      
        body: Center(child: time_input(minute :23)), 
      // TimePickerDialog(
      //   initialTime: TimeOfDay(
      //     hour: 0, 
      //     minute: 0
      //     ),
      //     initialEntryMode : TimePickerEntryMode.inputOnly,

      //     ), 
      //header1(label: "Time left"),
      
      backgroundColor: Colors.red[00],

      );
    
  }
}