import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nubank/designer/colors.dart';

class CircleButton extends StatelessWidget {
  final String text;
  final IconData? icon;
  final String? tag;
  final Function()? onTap;
  CircleButton(this.text, {this.icon,this.onTap, this.tag});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(width: 90, height: 130,
        child: Column(
          children: [
            Stack(
              children: [Container(
                height: 70,
                width: 70,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: aBackgroundColor),
                child: Icon(icon),
              ),
                  if (tag!= null)
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 50),
                      child: Container(
                          height: 20,
                          width: 32,
                          decoration: BoxDecoration(
                            color: aPrimaryColor,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                              child: Text(tag!,
                                  style: TextStyle(
                                      color: aContainerColor,
                                      fontWeight: FontWeight.w500)))),
                    )
        ]
            ),
            SizedBox(
              height: 15,
            ),
            Text(text, style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15,
             ), textAlign: TextAlign.center,),

          ],
        ),
      ),
      onTap: onTap,
    );
  }
}
