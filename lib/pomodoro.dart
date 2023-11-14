import "dart:async";

import "package:flutter/material.dart";
import "./util/_MyTimerState.dart";
class pomodoroPage extends StatefulWidget {
  const pomodoroPage({super.key});

  @override
  State<pomodoroPage> createState() => _pomodoroPageState();
}

class _pomodoroPageState extends State<pomodoroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pomodoro'),
      
      ),
      body: Timer(

      ),
    );
  }
}