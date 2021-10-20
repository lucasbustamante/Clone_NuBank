import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nubank/designer/card.dart';
import 'package:nubank/designer/circle_button.dart';
import 'package:nubank/designer/colors.dart';
import 'package:nubank/designer/screens/my_cards.dart';
import 'package:nubank/designer/screens/profile.dart';
import 'package:nubank/designer/value_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: aBackgroundColor,
      body: Column(
        children: [
          Profile(),
          ValueCard(),
          Container(
              width: MediaQuery.of(context).size.width,
              color: aContainerColor,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CircleButton('Área Pix', icon: Icons.refresh,),
                    CircleButton('Pagar'),
                    CircleButton('Transferir'),
                    CircleButton('Depositar',),
                    CircleButton('Recarga de celular'),
                    CircleButton('Transferir Internac.'),
                    Stack(children: [
                      CircleButton('Encotrar atalhos'),
                      Padding(
                        padding: const EdgeInsets.only(left: 29.5, top: 50),
                        child: Container(
                            height: 20,
                            width: 32,
                            decoration: BoxDecoration(
                              color: aPrimaryColor,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Center(
                                child: Text('Dica',
                                    style: TextStyle(
                                        color: aContainerColor,
                                        fontWeight: FontWeight.w500)))),
                      )
                    ]),
                  ],
                ),
              )),
          MyCards(),
          Cards('Investimentos',icon: Icons.refresh,
            text: 'A revolução roxa começou. Invista de maneira\nsimples,'
                ' sem burocracias e 100% digital',),
        ],
      ),
    );
  }
}
