import 'package:flutter/material.dart';
import 'package:nubank/core/colors.dart';
import 'package:nubank/designer/purple_button.dart';

class Cards extends StatelessWidget {
  final IconData? icon;
  final String title;
  final String? text;
  final String? button;

  Cards(this.title, {this.text, this.icon, this.button});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: kContainerColor,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (text != null)
                  SizedBox(
                    height: 20,
                  ),
                Icon(icon),
                if (text != null) SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(title,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    if (text != null)
                      Icon(Icons.arrow_forward_ios_sharp,
                          color: kSecondaryTextColor, size: 20)
                  ],
                ),
                SizedBox(height: 25),
                if (text != null)
                  Text(text!,
                      style: TextStyle(
                          color: kSecondaryTextColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 14)),
                SizedBox(
                  height: 25,
                ),
                if (button != null) PurpleButton('Conhecer'),
                SizedBox(height: 10)
              ],
            ),
          ),
        ),
        SizedBox(
          height: 3,
        )
      ],
    );
  }
}
