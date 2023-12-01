import 'package:flutter/material.dart';

class timer_card extends StatelessWidget {
  const timer_card({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          boxShadow: kElevationToShadow[0],
          borderRadius: BorderRadius.circular(5), 
          color: Colors.yellow[800]

        ),
        
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 10, bottom:10 ),
          
          child: Text(
            "Time Left",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20),
            ),
        )
        
    
      );
   }
    
 }
