import "package:flutter/material.dart";
import "package:google_nav_bar/google_nav_bar.dart";

class BottonNavBar extends StatelessWidget {
  const BottonNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const GNav(
        tabs: [
          GButton(
            icon: Icons.home,
            text: "Home"
            ),
           GButton(
            icon: Icons.apple,
            text: "Pomodoro" )
        ])
    );
  }
}