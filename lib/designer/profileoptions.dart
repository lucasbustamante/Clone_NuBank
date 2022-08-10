import 'package:flutter/material.dart';
import 'package:nubank/core/colors.dart';

class ProfileOptions extends StatelessWidget {
  final IconData? icon;
  final String text;

  ProfileOptions(this.text, {this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: kContainerColor,
          width: MediaQuery.of(context).size.width,
          height: 70,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(icon!, size: 25),
                    SizedBox(width: 15),
                    Text(
                      text,
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: kSecondaryTextColor,
                  size: 17,
                ),
              ],
            ),
          ),
        ),
        Divider(
          height: 0.5,
          thickness: 1,
        )
      ],
    );
  }
}
