import 'package:flutter/material.dart';
import 'package:nubank/core/colors.dart';

class MyCards extends StatelessWidget {
  const MyCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: kContainerColor,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
                child: Row(
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    Icon(Icons.credit_card_outlined),
                    SizedBox(
                      width: 15,
                    ),
                    Text('Meus Cartões',
                        style: TextStyle(fontWeight: FontWeight.w600))
                  ],
                ),
                height: 55,
                width: 340,
                decoration: BoxDecoration(
                    color: kBackgroundColor,
                    borderRadius: BorderRadius.circular(15))),
          ),
        ],
      ),
    );
  }
}
