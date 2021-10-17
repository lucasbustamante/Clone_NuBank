import 'package:flutter/material.dart';
import 'package:nubank/designer/purple_button.dart';

class Investments extends StatelessWidget {
  const Investments({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(width: MediaQuery.of(context).size.width,
      color: Colors.white,child: Padding(
        padding: const EdgeInsets.only(top: 20,left: 35, right: 35),
        child: Column(
        children: [
          Align(alignment: Alignment.topLeft,
              child: Icon(Icons.add_chart)),
          SizedBox(height: 25,),
          Align(alignment: Alignment.topLeft,
              child: Text('Investimentos', style: TextStyle(fontSize: 23,
                  fontWeight: FontWeight.bold))),
          SizedBox(height: 20),
          Text('A revolução roxa começou. Invista de maneira simples, '
              'sem burocracias e 100% digital.'),
          SizedBox(height: 20),
          PurpleButton(
            'Conhecer'
          ),
        ],
    ),
      ),);
  }
}
