import 'package:flutter/material.dart';
import 'package:nubank/screens/gif_animation.dart';
import 'package:nubank/screens/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GifAnimation(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
    );
  }
}
