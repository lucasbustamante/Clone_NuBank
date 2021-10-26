import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nubank/designer/card.dart';
import 'package:nubank/designer/circle_button.dart';
import 'package:nubank/designer/colors.dart';
import 'package:nubank/designer/screens/my_cards.dart';
import 'package:nubank/designer/screens/profile.dart';
import 'package:nubank/designer/value_card.dart';

import '../other_cards.dart';

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
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Profile(),
            ValueCard(),
            Container(
                width: MediaQuery.of(context).size.width,
                color: aContainerColor,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  child: Row(
                    children: [
                      CircleButton('Área Pix', icon: Icons.api,),
                      CircleButton('Pagar', icon: Icons.wysiwyg),
                      CircleButton('Transferir',icon: Icons.arrow_circle_up),
                      CircleButton('Depositar',icon: Icons.arrow_circle_down),
                      CircleButton('Recarga de celular',icon: Icons.settings_cell),
                      CircleButton('Transferir Internac.',icon: Icons.arrow_circle_up_outlined),
                        CircleButton('Encotrar atalhos', tag: 'Dica',),                   ],
                  ),
                )),
            MyCards(),
            Cards('Investimentos',icon: Icons.addchart,
              text: 'A revolução roxa começou. Invista de maneira\nsimples,'
                  ' sem burocracias e 100% digital',tags: 'Conhecer'),
            SizedBox(height: 3),
            Cards('Seguro de vida', text: 'Conheça Nubank vida: um seguro simples e que\n'
                'cabe no bolso. ', icon: Icons.volunteer_activism,),
            SizedBox(height: 3,),
            Cards('Conhecer mais',),
            OtherCards('Função débito', text: 'Você no controle das suas compras do\n'
                'dia a dia de um jeito fácil e\ntransparente.',
            tag: 'Ativar débito',),
          ],
        ),
      ),
    );
  }
}
