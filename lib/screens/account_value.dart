import 'package:flutter/material.dart';
import 'package:nubank/core/colors.dart';
import 'package:nubank/core/constants.dart';
import 'package:nubank/designer/circle_button.dart';
import 'package:nubank/designer/historic.dart';

class AccountValue extends StatelessWidget {
  const AccountValue({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kContainerColor,
        appBar: AppBar(
          backgroundColor: kContainerColor,
          elevation: 0,
          foregroundColor: kSecondaryTextColor,
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.help_outline,
                  color: kSecondaryTextColor,
                ))
          ],
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Saldo disponível',
                      style: TextStyle(
                          color: kSecondaryTextColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 16)),
                  SizedBox(
                    height: 10,
                  ),
                  Text('R\$ $Value',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 40)),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.account_balance),
                          SizedBox(width: 15),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Dinheiro guardado',
                                  style: TextStyle(
                                    color: kSecondaryTextColor,
                                  )),
                              Text('R\$ $Savings',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17))
                            ],
                          ),
                        ],
                      ),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: kSecondaryTextColor,
                        size: 17,
                      )
                    ],
                  ),
                  SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.add_chart),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Rendimento total da conta',
                                  style: TextStyle(
                                    color: kSecondaryTextColor,
                                  )),
                              Text(
                                '+R\$ $Income',
                                style: (TextStyle(
                                    color: kValueColor,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold)),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Icon(
                        Icons.arrow_forward_ios_sharp,
                        color: kSecondaryTextColor,
                        size: 17,
                      )
                    ],
                  ),
                  SizedBox(height: 30),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    CircleButton(
                      'Função Débito',
                      icon: Icons.smartphone,
                    ),
                    CircleButton('Depositar', icon: Icons.arrow_circle_down),
                    CircleButton('Pagar', icon: Icons.wysiwyg),
                    CircleButton('Transferir', icon: Icons.arrow_circle_up),
                    CircleButton('Pedir Extrato', icon: Icons.ad_units_sharp),
                    CircleButton('Cobrar',
                        icon: Icons.account_balance_wallet_outlined)
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Divider(thickness: 1),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Histórico',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 23)),
                  SizedBox(height: 40),
                  TextField(
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    cursorColor: kPrimaryColor,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        hintText: 'Buscar',
                        fillColor: kBackgroundColor,
                        filled: true,
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius:
                                BorderRadius.all(Radius.circular(40)))),
                  )
                ],
              ),
            ),
            Historic(
              'Transferência enviada',
              Name,
              Value2,
              Day2,
              pix: 'Pix',
            ),
            Historic(
              'Transferência recebida',
              Name2,
              Value3,
              Day3,
              pix: '',
            ),
            Historic(
              'Transferência recebida',
              Name2,
              Value4,
              Day,
              pix: 'Pix',
            ),
          ]),
        ));
  }
}
