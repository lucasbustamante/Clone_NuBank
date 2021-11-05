import 'package:flutter/material.dart';
import 'package:nubank/core/colors.dart';
import 'package:nubank/core/constants.dart';
import 'package:nubank/designer/circle_button.dart';


class AccountValue extends StatelessWidget {
  const AccountValue({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: aContainerColor,
    appBar: AppBar(backgroundColor: aContainerColor, elevation: 0,
        foregroundColor: aSecondaryTextColor,
    actions: [
      IconButton(onPressed: (){}, icon: Icon(Icons.help_outline, color: aSecondaryTextColor,))
    ],),
    body: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Saldo disponível',
                    style: TextStyle(color: aSecondaryTextColor,
                        fontWeight: FontWeight.w600, fontSize: 16)),
                SizedBox(height: 10,),
                Text('R\$ $Value',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 40)),
                SizedBox(height: 50,),
                Row(children: [
                  Icon(Icons.account_balance),
                  SizedBox(width: 15),
                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Dinheiro guardado', style: TextStyle(color: aSecondaryTextColor,)),
                      Text('R\$ $Savings',style: TextStyle(fontWeight: FontWeight.bold,
                          fontSize: 17))],),
                  Container(
                    child: Icon(Icons.arrow_forward_ios_rounded, color: aSecondaryTextColor,
                    size: 17,),)
                ],
                ),
                SizedBox(height: 40),
                Row(
                  children: [
                    Icon(Icons.add_chart),
                    SizedBox(width: 10,),
                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Rendimento total da conta', style: TextStyle(color:
                        aSecondaryTextColor,)),
                        Text('+R\$ $Income', style: (TextStyle(color: aValueColor,
                            fontSize: 18, fontWeight: FontWeight.bold)),),

                      ],),
                    Icon(Icons.arrow_forward_ios_sharp, color: aSecondaryTextColor,
                    size: 17,)
                  ],
                ),
                SizedBox(height: 30),],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            child: Row(
              children: [
                CircleButton('Função Débito',
                icon: Icons.smartphone,),
                CircleButton('Depositar', icon: Icons.arrow_circle_down ),
                CircleButton('Pagar', icon: Icons.wysiwyg), 
                CircleButton('Transferir', icon: Icons.arrow_circle_up),
                CircleButton('Pedir Extrato', icon: Icons.ad_units_sharp),
                CircleButton('Cobrar', icon: Icons.account_balance_wallet_outlined)
              ],
            ),
          ),
          SizedBox(height: 20,),
          Divider(thickness: 2,),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(children: [
              Text('Histórico', style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 23))
            ],),
          )
    ])
    );

  }
}
