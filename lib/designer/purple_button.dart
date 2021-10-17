import 'package:flutter/material.dart';

class PurpleButton extends StatelessWidget {
  final String text;

  PurpleButton(this.text);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: GestureDetector(
        onTap: () {},
        child: Column(
          children: [
            Container(
              height: 45,
              width: 130,
              decoration: BoxDecoration(
                color: Color(0xff830ad1),
                borderRadius: BorderRadius.circular(40),
              ),
              child: Center(
                  child: Text(text,
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.white))),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
