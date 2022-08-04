import 'package:flutter/material.dart';
import 'package:nubank/core/colors.dart';

class GifAnimation extends StatelessWidget {
  const GifAnimation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: aPrimaryColor,
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/gif.gif",
              height: MediaQuery.of(context).size.height*0.65,
              ),
          ],
        ),
    );
  }
}
