import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final String text;
  final IconData? icon;
  CircleButton(this.text, {this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(width: 90, height: 130,
      child: Column(
        children: [
          Container(
            height: 70,
            width: 70,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Color(0xfff0f1f5)),
            child: Icon(icon),
          ),
          SizedBox(
            height: 15,
          ),
          Text(text, style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15,
           ), textAlign: TextAlign.center,),
        ],
      ),
    );
  }
}
