import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nubank/core/colors.dart';
import 'package:nubank/core/constants.dart';


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
    body: Padding(
      padding: const EdgeInsets.only(left: 20,right: 20),
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
              child: Icon(Icons.arrow_forward_ios_rounded, color: aSecondaryTextColor,),)
        ],
      ),
          SizedBox(height: 40),
          Row(
            children: [
              Icon(Icons.add_chart),
              SizedBox(width: 10,),
              Column(children: [
                Text('Rendimento total da conta', style: TextStyle(color:
                aSecondaryTextColor,)),
                Text('+R\$ $Income', style: (TextStyle(color: aValueColor,
                fontSize: 18, fontWeight: FontWeight.bold)),)
              ],)
            ],
          )
    ])
    ));

  }
}
