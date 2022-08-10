import 'dart:async';

import 'package:flutter/material.dart';

import '../core/colors.dart';
import 'home_page.dart';


class GifAnimation extends StatefulWidget {
  const GifAnimation({Key? key}) : super(key: key);

  @override
  State<GifAnimation> createState() => _GifAnimationState();
}

class _GifAnimationState extends State<GifAnimation> {
  @override
  void initState(){
    Timer(Duration(seconds: 3), () {Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (BuildContext context) => HomePage()));});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kPrimaryColor,
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
