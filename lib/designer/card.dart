import 'package:flutter/material.dart';
import 'package:nubank/designer/colors.dart';

class Cards extends StatelessWidget {
  final IconData? icon;
  final String title;
  final String? text;
  final String? tag;

  Cards (this.title, {this.text, this.icon, this.tag});

  @override
  Widget build(BuildContext context) {
    return Container(color: aContainerColor,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
            Icon(icon),
            SizedBox(height: 20),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                Icon(Icons.arrow_forward_ios_sharp, color: aSecondaryTextColor, size: 20)
              ],
            ),
            SizedBox(height: 25),
            Text(text!,style: TextStyle(color: aSecondaryTextColor, fontWeight:
            FontWeight.bold, fontSize: 15)),
            SizedBox(height: 30,),
          ],
        ),
      )
    );
  }
}
