import 'package:flutter/material.dart';

import '../core/colors.dart';

class PurpleButton extends StatelessWidget {
  final String value;

  PurpleButton(this.value);

  @override
  Widget build(BuildContext context) {
    return Chip(
        backgroundColor: kPrimaryColor,
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        label: Text(
          value,
          style: TextStyle(
              fontWeight: FontWeight.w500,
              color: kContainerColor,
              fontSize: 18),
        ));
  }
}
