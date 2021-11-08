import 'package:flutter/material.dart';
import 'package:nubank/core/colors.dart';

class Historic extends StatelessWidget {
  final String title;
  final String name;
  final String value;
  final String day;

  Historic(this.title,this.name,this.value, this.day);

  @override
  Widget build(BuildContext context) {

    var color = aBackgroundColor;
    var icon = Icons.arrow_circle_up;
    var iconcolor = aTextColor;

    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,
            vertical: 20),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [

                    Container(
                      child: Icon(icon, color: iconcolor),
                      height: 50, width: 50,
                    decoration: BoxDecoration(color: color,
                        borderRadius: BorderRadius.circular(40)),),

                    SizedBox(
                      width: 15,
                    ),
                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(title, style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16
                            ),
                            ),

                          ],
                        ),
                        SizedBox(height: 10),
                        Text(name),
                        SizedBox(height: 8),
                        Text('R\$ $value')
                      ],
                    )
                  ],
                ),
                Text(day),
              ],

            ),
          ),
          Divider(thickness: 1),

        ],
      ),

    );
  }
}
