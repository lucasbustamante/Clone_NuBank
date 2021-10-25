import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nubank/designer/colors.dart';

class Cards extends StatelessWidget {
  final IconData? icon;
  final String title;
  final String? text;
  final String? tags;

  Cards (this.title,  {this.text, this.icon,this.tags});

  @override
  Widget build(BuildContext context) {
    return Container(color: aContainerColor,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if(text!= null)
              SizedBox(height: 20,),
            Icon(icon),
            if(text!= null)
              SizedBox(height: 20),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                if (text!= null)
                  Icon(Icons.arrow_forward_ios_sharp, color: aSecondaryTextColor, size: 20)
              ],
            ),
            SizedBox(height: 25),
            if (text!= null)
              Text(text!,style: TextStyle(color: aSecondaryTextColor, fontWeight:
              FontWeight.w500, fontSize: 14)),
            SizedBox(height: 25,),
            if (tags!= null)
              Container(
              height: 40, width: 120,
              decoration: BoxDecoration(color: aPrimaryColor,
              borderRadius: BorderRadius.circular(40)),
              child: Center(child: Text(tags!, style: TextStyle(
                color: aContainerColor, fontSize: 17, fontWeight: FontWeight.w500
              ),)),),
            SizedBox(height: 25,),
          ],
        ),
      ),
    );
  }
}
