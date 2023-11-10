import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int time = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: const Text('HealthSage'),
          ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.hourglass_empty_rounded),
          onPressed: () => {
            print("lmao")
          },
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.timer),
              label: 'Pomodoro',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.handyman),
              label: 'Reps',
            )
          ]
        ),
        drawer: Drawer(
          backgroundColor: Colors.deepOrange,
          child: Text('Yo!'),
        ),
        body:
            ListView(
              children: [
                Container(
                  
                  padding: EdgeInsets.all(9.0),
                  margin:EdgeInsets.all(50),
                  height: 100,
                  width:100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: kElevationToShadow[9],   
                    gradient: LinearGradient(colors: [Colors.green,Colors.teal])
                    
                    ),
                  child: const Text('The quick brown fox jumps over the lazy dog'),
                  ),
                 Container(
                  child: Icon(Icons.timer) ,
                  ),
                Stack(
                  children: [ Container(
                    child: Icon(Icons.verified_outlined),
                    

                  ),
                  ]
                ),
                

              ],
            ),
        ),
      
    );
  }
}
