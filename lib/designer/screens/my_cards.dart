import 'package:flutter/material.dart';

import '../colors.dart';

class MyCards extends StatelessWidget {
  const MyCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(width: MediaQuery.of(context).size.width,
      color: aContainerColor,
      child: Column(
        children: [
          Container(
              child: Row(
                children: [
                  Icon(Icons.credit_card_outlined),
                  Text('Meus Cartões')
                ],
              ),
              height: 55, width: 340,
          decoration: BoxDecoration(color: aBackgroundColor,
              borderRadius: BorderRadius.circular(10))),

        ],
      ),

    );
  }
}
