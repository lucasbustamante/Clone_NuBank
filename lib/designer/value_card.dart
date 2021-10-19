import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nubank/core/constants.dart';

class ValueCard extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.white,
      width: MediaQuery.of(context).size.width,
      height: 110,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20 , top: 25),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Conta', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
                Row(children: [
                  Icon(Icons.arrow_forward_ios_rounded, color: Colors.grey,
                  size: 20,)
                ],)
              ],
            ),
            SizedBox(height: 15),
            Text('R\$ $Value',style: TextStyle(fontSize: 27, fontWeight: FontWeight.w500)),
          ],
        ),
      ),
    );
  }
}
