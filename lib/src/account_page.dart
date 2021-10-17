import 'package:flutter/material.dart';
import 'package:nubank/designer/value_card.dart';
import 'package:nubank/src/icon_button.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
      ValueCard(),
      IconButtons(),

    ]);
  }
}
