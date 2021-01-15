import 'package:SHOP_APP/domain/cred-card/add-card.dart';
import 'package:flutter/material.dart';

import 'components/credDebitCard.dart';

class AddCardScreen extends StatelessWidget {
  static String routeName = '/add-new-card';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Adiciona novo cartão")),
        body: AddCard()
        //   body: Column(
        //     children: <Widget>[
        //        CredDebitCard(
        //           color: Color(0xFF090943),
        //           number: 'cardNumber',
        //           holder: 'cardHolder',
        //           expiration: 'cardExpiration',
        //         ),
        //         TextFormField(
        //           // inputFormatters: [],
        //           keyboardType: TextInputType.number,
        //           decoration: InputDecoration(
        //             border: InputBorder.none,
        //             hintText: "Card Number",
        //             labelText: "Card Number:"
        //           ),
        //         )
        //     ],
        //   ),
        );
  }
}
