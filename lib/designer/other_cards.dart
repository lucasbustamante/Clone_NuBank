import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'colors.dart';

class OtherCards extends StatelessWidget {
  final String title;
  final String? text;
  final String? tag;

  OtherCards (this.title, {this.text, this.tag});

  @override
  Widget build(BuildContext context) {
    return Container(height: 200, width: 300, decoration: BoxDecoration(
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
              SizedBox(height: 25,),
              Container(
                height: 40, width: 120,
                decoration: BoxDecoration(color: aPrimaryColor,
                    borderRadius: BorderRadius.circular(40)),
                child: Center(child: Text(tag!, style: TextStyle(
                    color: aContainerColor, fontSize: 17, fontWeight: FontWeight.w500
                ),)),),
          ],
        ),
      ),
    );
  }
}
