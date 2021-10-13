import 'package:flutter/material.dart';
import 'package:nubank/src/depositar.dart';
import 'package:nubank/src/pagar.dart';
import 'package:nubank/src/transferir.dart';
import 'area_pix.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                      SizedBox(width: 130,),
                      Icon(Icons.remove_red_eye_outlined, color: Colors.white),
                      SizedBox(width: 25,),
                      Icon(Icons.contact_support_outlined,color: Colors.white),
                      SizedBox(width: 25,),
                      Icon(Icons.email,color: Colors.white)
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
          Padding(
            padding: const EdgeInsets.only(right: 250, top: 25),
            child: Text(
              'Conta',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 180, top: 15),
            child: Text(
              'R\$ 149,15',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 28,
              ),
            ),
          ),
          SizedBox(
            height: 70,
          ),
          SizedBox(height: 100, child: ImageButtons()),
          SizedBox(height: 70,),
          Align(alignment: Alignment.bottomLeft,
              child: Icon(Icons.credit_card_sharp))
        ],
      ),
    );
  }
}

class ImageButtons extends StatelessWidget {
  const ImageButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            child: Image.asset('assets/area_pix.png'),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => AreaPix()));
            },
          ),
          SizedBox(
            width: 20,
          ),
          GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Pagar()));
              },
              child: Image.asset('assets/pagar.png')),
          SizedBox(
            width: 20,
          ),
          GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Transferir()));
              },
              child: Image.asset('assets/transferir.png')),
          SizedBox(
            width: 20,
          ),
          GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Depositar()));
              },
              child: Image.asset('assets/depositar.png')),
        ],
      ),
    );
  }
}
