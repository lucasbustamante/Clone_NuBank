import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ValueCard extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Conta', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20)),
            SizedBox(height: 15),
            Text('R\$ 900,00',style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500)),
          ],
        ),
      ),
    );
  }
}
