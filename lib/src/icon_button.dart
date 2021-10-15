import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nubank/src/depositar.dart';
import 'package:nubank/src/pagar.dart';
import 'package:nubank/src/transferir.dart';
import 'area_pix.dart';

class IconButtons extends StatelessWidget {
  const IconButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 55,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: SingleChildScrollView(scrollDirection: Axis.horizontal,
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
                  SizedBox(
                    width: 15,
                  ),
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
        ]
      )
    );
  }
}
