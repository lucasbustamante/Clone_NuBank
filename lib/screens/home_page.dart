import 'package:flutter/material.dart';
import 'package:nubank/core/route.dart';
import 'package:nubank/screens/account_value.dart';
import 'package:nubank/designer/circle_button.dart';
import 'package:nubank/core/colors.dart';
import 'package:nubank/designer/main_card.dart';
import 'package:nubank/designer/other_cards.dart';
import 'package:nubank/designer/my_cards.dart';
import 'package:nubank/designer/profile.dart';
import 'package:nubank/designer/value_card.dart';
import 'package:nubank/screens/area_pix.dart';
import 'package:page_transition/page_transition.dart';

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
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [aPrimaryColor, Colors.white],
          stops: [0.5, 0.5],
        )),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Profile(),
              Container(
                color: aContainerColor,
                child: Column(
                  children: [
                    ValueCard(
                      onTap: () => Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.rightToLeft,
                              duration: Duration(milliseconds: 300),
                              child: AccountValue())),
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width,
                        color: aContainerColor,
                        child: SingleChildScrollView(
                          physics: BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              CircleButton('Área Pix',
                                  icon: Icons.api,
                                  onTap: () => MyRouter.showBottomSheet(
                                      context, AreaPix())),
                              CircleButton('Pagar',
                                  icon: Icons.wysiwyg, onTap: () {}),
                              CircleButton('Transferir',
                                  icon: Icons.arrow_circle_up, onTap: () {}),
                              CircleButton('Depositar',
                                  icon: Icons.arrow_circle_down, onTap: () {}),
                              CircleButton('Recarga de celular',
                                  icon: Icons.settings_cell, onTap: () {}),
                              CircleButton('Transferir Internac.',
                                  icon: Icons.arrow_circle_up_outlined,
                                  onTap: () {}),
                              CircleButton('Encotrar atalhos',
                                  tag: 'Dica',
                                  icon: Icons.wifi_tethering,
                                  onTap: () {}),
                            ],
                          ),
                        )),
                    MyCards(),
                    MainCard(),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      color: aContainerColor,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Text('Descubra mais',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600)),
                          ),
                          SizedBox(height: 35),
                          SingleChildScrollView(
                            physics: BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Row(children: [
                                OtherCards('Função débito',
                                    text:
                                        'Você no controle das suas compras do\n'
                                        'dia a dia de um jeito fácil e\ntransparente',
                                    tag: 'Ativar débito'),
                                OtherCards('Indique seus amigos',
                                    text:
                                        'Mostre aos seus amigos como é fácil ter uma vida sem burocracia',
                                    tag: 'Indicar amigos'),
                                OtherCards('WhatsApp',
                                    text:
                                        'Pagamentos seguros, rápidos e sem tarifa. '
                                        'A experiência Nubank sem nem sair da conversa.',
                                    tag: 'Quero conhecer'),
                              ]),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
