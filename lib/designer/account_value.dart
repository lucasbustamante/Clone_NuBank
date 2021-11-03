import 'package:flutter/material.dart';
import 'package:nubank/core/colors.dart';

class AccountValue extends StatelessWidget {
  const AccountValue({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: aContainerColor,
    body: Container(
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween ,
        children: [
        IconButton(onPressed: (){}, icon: Icon(Icons.refresh)),
      IconButton(onPressed: (){}, icon: Icon(Icons.refresh))
      ],),
    )
    );

  }
}
