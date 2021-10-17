import 'package:flutter/material.dart';

class  Insurance extends StatelessWidget {
  const Insurance ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(width: MediaQuery.of(context).size.width,
      color: Colors.white,
    child: Padding(
      padding: const EdgeInsets.only(left: 35, right: 35),
      child: Column(
        children: [
        SizedBox(height: 20,),
        Align(alignment: Alignment.topLeft,
            child: Icon(Icons.library_add_outlined)),
        SizedBox(height: 20),
        Align(alignment: Alignment.topLeft,
          child: Text('Seguro de vida', style: TextStyle(fontWeight: FontWeight.bold,
          fontSize: 23)),
        ),
        SizedBox(height: 20,),
        Align(alignment: Alignment.topLeft,
            child: Text('Conheça Nubank Vida: um seguro simples e que \ncabe no bolso.')),
],),
    ),
    );
  }
}
