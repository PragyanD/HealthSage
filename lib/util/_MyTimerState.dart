class timer_state extends State<MyTimer> {
  Timer? _timer;
  int _start = 10; // Set the starting value of the timer

  void startTimer() {
    const oneSec = const Duration(seconds: 1);
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
      },
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Timer Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('$_start', style: Theme.of(context).textTheme.headline4),
            ElevatedButton(
              onPressed: () {
                startTimer();
              },
              child: Text('Start Timer'),
            )
          ],
        ),
      ),
    );
  }
}