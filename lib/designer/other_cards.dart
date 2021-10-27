import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nubank/designer/purple_button.dart';

import 'colors.dart';

class OtherCards extends StatelessWidget {
  final String title;
  final String? text;
  final String? tag;

  OtherCards (this.title, {this.text, this.tag});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20),
      width: 270, decoration: BoxDecoration(
        color: aBackgroundColor,
        borderRadius:
    BorderRadius.circular(20),
    ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20)),
            SizedBox(height: 10,),
            Text(text!),
              SizedBox(height: 20,),
            PurpleButton(tag!)
          ],
        ),
      ),
    );
  }
}
