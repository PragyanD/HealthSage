import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}
class Pomodoro extends StatelessWidget {
  const Pomodoro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[400],
        
        title: const Text('Pomodoro',
        style: TextStyle(
          color: Colors.white,
          fontFamily: 'Garamond', 
        ),
        )
      ),
    );
  }
}
class _MyAppState extends State<MyApp> {
  int count = 0;
  @override
  void initState() {
    //check 'Provider' 
    // TODO: implement initState
    super.initState();
  }
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
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
            setState(() {
              count++;
            })
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
            ),
          ]
          // onTap: (int index) => {
          //   Navigator.push(
          //     context,
          //     MaterialPageRoute(
          //       builder: (context) => Pomodoro()
          //       )
          //     ),
          // },
        ),
        drawer: const Drawer(
          backgroundColor: Colors.deepOrange,
          child: Text('Yo!'),
        ),
        body:
            ListView(
              children: [Container(
                  
                  padding: EdgeInsets.all(9.0),
                  margin:EdgeInsets.all(50),
                  height: 200,
                  width:100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: kElevationToShadow[9],   
                    gradient: LinearGradient(colors: [Colors.green,Colors.teal])
                    
                    ),
                  child: Center(
                    child: Text('$count',
                    style: TextStyle(fontSize: 70, color: Colors.white)
                    ),
                    
                    ),
                  ),
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
                  Container(
                    child: Icon(Icons.verified_outlined)
                  ),
                  ElevatedButton(
                    child: Text('Start Timer'),
                    onPressed: () {
                      // Navigator.push(
                      //   context, MaterialPageRoute(
                      //   builder: (_) => Pomodoro(),
                      //   )
                      // );
                      count++;
                    },
                    )
                

              ],
            ),
        ),
      
    );
  }
}