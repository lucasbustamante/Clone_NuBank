import 'package:flutter/material.dart';
import 'package:nubank/designer/bootstrap_icons.dart';
import 'package:nubank/designer/circle_button.dart';
import 'package:nubank/src/investments.dart';
import 'package:nubank/src/insurance.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff0f1f5),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 35, top: 50),
                    child: Row(
                      children: [
                        Container(
                          child: Icon(
                            Icons.perm_identity_rounded,
                            color: Colors.white,
                            size: 35,
                          ),
                          decoration: BoxDecoration(
                            color: Color(0x3BFFFFFF),
                            shape: BoxShape.circle,
                          ),
                          height: 45,
                          width: 45,
                        ),
                        SizedBox(
                          width: 130,
                        ),
                        Icon(Icons.remove_red_eye_outlined,
                            color: Colors.white),
                        SizedBox(
                          width: 25,
                        ),
                        Icon(Icons.contact_support_outlined,
                            color: Colors.white),
                        SizedBox(
                          width: 25,
                        ),
                        Icon(Icons.email, color: Colors.white)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 220,
                      top: 20,
                    ),
                    child: Text(
                      'Olá, Lucas',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              height: 155,
              width: MediaQuery.of(context).size.width,
              color: Color(0xff830ad1),
            ),
            Column(
              children: [
                Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 30, right: 30, top: 25),
                          child: Row(
                            children: [
                              CircleButton(
                                'Área Pix',
                                icon: BootstrapIcons.music_note,
                              ),
                              CircleButton('Pagar', icon: Icons.refresh),
                              CircleButton('Transferir', icon: Icons.refresh),
                              CircleButton('Depositar', icon: Icons.refresh),
                              CircleButton('Recarga de celular',
                                  icon: Icons.refresh),
                              CircleButton('Cobrar', icon: Icons.refresh),
                              CircleButton('Transferir Internac.'),
                              Stack(children: [
                                CircleButton('Encontrar atalhos'),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 45, left: 28),
                                  child: Container(
                                    child: Center(
                                        child: Text('Dica',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w500))),
                                    decoration: BoxDecoration(
                                        color: Color(0xff830ad1),
                                        borderRadius: BorderRadius.circular(5)),
                                    height: 22,
                                    width: 35,
                                  ),
                                )
                              ])
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Investments(),
                SizedBox(
                  height: 10,
                ),
                Insurance(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
