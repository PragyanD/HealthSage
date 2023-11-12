import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'homePage.dart';

void main() async {
  //init hive
  await Hive.initFlutter();

  //open a box
  var box = await Hive.openBox('mybox');
  runApp(MyApp());

}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
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
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(primarySwatch: Colors.green)
    );
  }
}

