import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  final IconData? icon;
  final String text;

  Cards (this.text, {this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Icon(icon),
          SizedBox(height: 20),
          Text(text)
        ],
      )
    );
  }
}
