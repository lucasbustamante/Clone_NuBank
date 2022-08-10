import 'package:flutter/material.dart';
import 'package:nubank/core/constants.dart';
import 'package:nubank/core/colors.dart';
import 'package:nubank/core/route.dart';
import 'package:nubank/screens/profilepage.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 160,
          color: kPrimaryColor,
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 5, top: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () =>
                            MyRouter.showBottomSheet(context, ProfilePage()),
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Color(0x3BFFFFFF)),
                          child: Icon(Icons.perm_identity_rounded,
                              color: Colors.white),
                        ),
                      ),
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.remove_red_eye,
                                  color: Colors.white)),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.help_outline,
                                  color: Colors.white)),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.mail_outline,
                                  color: Colors.white)),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  'Olá, $Username',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
