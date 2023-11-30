import "dart:async";

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
        title: Center(child: Text('Pomodoro')),
        elevation: 0, 
        actions: [],

      ),
      
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},//modify
        backgroundColor: Colors.red[400],
        hoverColor: Colors.green[300],
        elevation: 5,

      ),
      
      body: Container(
        child: CalendarDatePicker(
          firstDate: DateTime(2023, 11,11,11,30),
          initialDate: DateTime.now(),
          lastDate: DateTime(2024),
          onDateChanged:(value) {
            
          }, 
        ),
        ),
      backgroundColor: Colors.red[00],

      );
    
  }
}