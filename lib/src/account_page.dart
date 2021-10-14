import 'package:flutter/material.dart';
import 'package:nubank/src/depositar.dart';
import 'package:nubank/src/pagar.dart';
import 'package:nubank/src/transferir.dart';
import 'area_pix.dart';

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
          child: Text('R\$ 149,15',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 28,
            ),
          ),
        ),
      ),
      SizedBox(
        height: 55,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              child: Container(
                  child: Column(
                    children: [
                      SizedBox(
                          height: 70, child: Image.asset('assets/area_pix.png')),
                      SizedBox(height: 15),
                      Text('Área Pix',
                          style: TextStyle(fontWeight: FontWeight.bold))
                    ],
                  )),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => AreaPix()));
              },
            ),
            SizedBox(
              width: 15,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Pagar()));
              },
              child: Container(
                child: Column(
                  children: [
                    SizedBox(
                        height: 70, child: Image.asset('assets/pagar.png')),
                    SizedBox(
                      height: 15,
                    ),
                    Text('Pagar', style: TextStyle(fontWeight: FontWeight.bold))
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 15,
            ),
            GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Transferir()));
                },
                child: Container(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 70,
                          child: Image.asset('assets/transferir.png'),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Transferir',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ))),
            SizedBox(
              width: 15,
            ),
            GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Depositar()));
                },
                child: Container(
                    child: Column(
                      children: [
                        SizedBox(
                            height: 70, child: Image.asset('assets/depositar.png')),
                        SizedBox(
                          height: 15,
                        ),
                        Text('Depositar',
                            style: TextStyle(fontWeight: FontWeight.bold))
                      ],
                    ))),
          ],
        ),
      ),
      SizedBox(
        height: 60,
      ),
      Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xfff0f1f5),
                  borderRadius: BorderRadius.circular(10)),
              height: 50,
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Icon(Icons.credit_card_sharp),
                  SizedBox(
                    width: 20,
                  ),
                  Text('Meus cartões',
                      style: TextStyle(fontWeight: FontWeight.bold))
                ],
              ),
            ),
          ))
    ]);
  }
}
