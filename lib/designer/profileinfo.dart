import 'package:flutter/material.dart';
import 'package:nubank/core/colors.dart';
import 'package:nubank/core/constants.dart';
import 'package:nubank/core/route.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: kBackgroundColor,
      child: Padding(
        padding: const EdgeInsets.only(top: 30, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
                onPressed: () => MyRouter.popPage(context),
                icon: Icon(
                  Icons.close_sharp,
                  color: kSecondaryTextColor,
                )),
            SizedBox(height: 20),
            Row(
              children: [
                Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.circular(40)),
                    child: Icon(
                      Icons.perm_identity_rounded,
                      color: kContainerColor,
                    )),
                SizedBox(width: 15),
                Text(
                  Username,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                )
              ],
            ),
            SizedBox(height: 30),
            Text(
              'Agência 0001•Conta 0000000-0\n'
              'Banco 0260•Nu Pagamentos S.A. - Instituição de Pagamento',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
