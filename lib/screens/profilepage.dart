import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nubank/core/colors.dart';
import 'package:nubank/core/route.dart';
import 'package:nubank/core/constants.dart';
import 'package:nubank/designer/profileinfo.dart';
import 'package:nubank/designer/profileoptions.dart';
import 'package:nubank/designer/purple_button.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [aBackgroundColor, Colors.white],
        stops: [0.5, 0.5],
      )),
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            ProfileInfo(),
            ProfileOptions('Me ajuda', icon: Icons.help_outline),
            ProfileOptions('Meus Dados', icon: Icons.perm_identity_rounded),
            ProfileOptions('Configurar app', icon: Icons.add_business_outlined),
            ProfileOptions('Segurança', icon: Icons.add_moderator),
            ProfileOptions('Configurar chaves Pix', icon: Icons.api),
            ProfileOptions('Pedir conta PJ', icon: Icons.add_business_outlined),
            ProfileOptions('Notificações', icon: Icons.add_alert_rounded),
            ProfileOptions('Configurar conta',
                icon: Icons.account_balance_wallet_outlined),
            ProfileOptions('Configurar cartão', icon: Icons.settings_cell),
            ProfileOptions('Sobre', icon: Icons.assignment_rounded),
            SizedBox(height: 20),
            Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                  color: aBackgroundColor,
                  borderRadius: BorderRadius.circular(40)),
              child: Center(
                child: Text(
                  'Sair do aplicativo',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                ),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
