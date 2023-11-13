import "package:flutter/material.dart";
import "./util/timer_state.dart";
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
      body: _MyTimerState
    );
  }
}