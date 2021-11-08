import 'package:flutter/material.dart';
import 'package:nubank/core/route.dart';
import 'package:nubank/designer/circle_button.dart';
import 'package:nubank/core/colors.dart';

class AreaPix extends StatelessWidget {
  const AreaPix({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 25,
      child: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () => MyRouter.popPage(context),
                  icon: Icon(
                    Icons.close_sharp,
                    color: aSecondaryTextColor,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.help_outline, color: aSecondaryTextColor))
            ],
          ),
          Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Área Pix',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w500)),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, right: 40),
                    child: Text(
                      'Envie e receba pagamentos a qualquer hora e dia'
                      'da semana, sem pagar nada por isso.',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 17,
                          color: aSecondaryTextColor),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text('Enviar',
                      style: TextStyle(
                          fontSize: 25,
                          color: aTextColor,
                          fontWeight: FontWeight.w500)),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleButton(
                          'Transferir',
                          icon: Icons.arrow_circle_up,
                        ),
                        CircleButton(
                          'Pix Copia e Cola',
                          icon: Icons.copy,
                        ),
                        CircleButton('Ler QR code', icon: Icons.qr_code_rounded)
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text('Receber',
                      style: TextStyle(
                          fontSize: 25,
                          color: aTextColor,
                          fontWeight: FontWeight.w500)),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(children: [
                      CircleButton(
                        'Cobrar',
                        icon: Icons.account_balance_wallet_outlined,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      CircleButton(
                        'Depositar',
                        icon: Icons.arrow_circle_down,
                      ),
                    ]),
                  ),
                ],
              )),
          Column(children: [
            Divider(thickness: 1.3),
            Padding(
              padding: const EdgeInsets.only(
                  top: 10, left: 20, right: 20, bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Registrar ou trazer chaves',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500)),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                          'Registre uma nova chave ou faça uma\n'
                          'portabilidade para o Nubank',
                          style: TextStyle(color: aSecondaryTextColor)),
                      Icon(Icons.arrow_forward_ios_rounded,
                          color: aSecondaryTextColor)
                    ],
                  )
                ],
              ),
            ),
            Column(
              children: [
                Divider(thickness: 1.3),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 10, left: 20, right: 20, bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Configurar Pix',
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w500)),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                              'Gerencie seu limite diário de transferência ou\n'
                              'suas chaves Pix.',
                              style: TextStyle(color: aSecondaryTextColor)),
                          Icon(Icons.arrow_forward_ios_rounded,
                              color: aSecondaryTextColor)
                        ],
                      )
                    ],
                  ),
                ),
                Divider(thickness: 1.3),
              ],
            ),
          ])
        ]),
      ),
    );
  }
}
