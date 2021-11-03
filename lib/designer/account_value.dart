import 'package:flutter/material.dart';
import 'package:nubank/core/colors.dart';
import 'package:nubank/core/route.dart';

class AccountValue extends StatelessWidget {
  const AccountValue({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: aContainerColor,
    appBar: AppBar(backgroundColor: aContainerColor, elevation: 0,
        foregroundColor: aSecondaryTextColor,
    actions: [
      IconButton(onPressed: (){}, icon: Icon(Icons.help_outline, color: aSecondaryTextColor,))
    ],),
    body: Container(
    )
    );

  }
}
