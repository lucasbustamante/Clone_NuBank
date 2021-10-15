import 'package:flutter/material.dart';
import 'package:nubank/src/icon_button.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
      Align(alignment: Alignment.topLeft,
        child: Padding(
          padding: const EdgeInsets.only(left: 30, top: 30),
          child: Row(
            children: [
              Text(
                'Conta',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Icon(Icons.arrow_forward_ios_rounded,size: 17, color: Color(0xFF767676))
            ],
          ),
        ),
      ),
      Align(alignment: Alignment.topLeft,
        child: Padding(
          padding: const EdgeInsets.only(left: 30,top: 20 ),
          child: Text('R\$ 982.052,15',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 28,
            ),
          ),
        ),
      ),
      IconButtons(),

    ]);
  }
}
