import "package:flutter/material.dart";

class Button1 extends StatelessWidget {
  final String text;
  VoidCallback onPressed;
  Button1({
    super.key,
    required this.text,
    required this.onPressed,});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: Theme.of(context).primaryColor,
      child: Text(text)
      
    );
  }
}