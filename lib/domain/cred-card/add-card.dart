import 'dart:math';

import 'package:SHOP_APP/components/dialogs/showDialog.dart';
import 'package:SHOP_APP/domain/model/cred_card.model.dart';
import 'package:SHOP_APP/screens/cred_card/components/credDebitCard.dart';
import 'package:flutter/material.dart';

class AddCard extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return AddCardState();
  }
}

class AddCardState extends State<AddCard>{
  
  final List<CredCard> lista_card = [
    // new CredCard(cvv: 456, expiration: '08/2022', holder: 'HOUSSEM SELMI', id: 0, number: '3546 7532 XXXX 9742'),
    new CredCard( cvv: 456, expiration: '08/2022', holder: 'SELMI HOUSSEM', id: 0, number: '3546 7532 XXXX 9742'),
  ];

  List colors = [Color(0xFF090943), Color(0xFA990755)];
  Random random = new Random();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(children: this.lista_card.map((e) =>
              _buildCredCard(
                cardExpiration: e.expiration,
                cardHolder: e.holder, 
                cardNumber: e.number, 
                color: colors[random.nextInt(colors.length)],
                context: context
                 )
            ).toList(),),
        _buildAddCardButton(icon: Icon(Icons.add), color: Color(0xFF081603))
      ]
    );
  }

  Container _buildAddCardButton({
    @required Icon icon,
    @required Color color
  }) {
    return Container(
      margin: const EdgeInsets.only(top: 24.0), 
      alignment: Alignment.center,
      child: FloatingActionButton(
        elevation: 2.0,
        backgroundColor: color,
        mini: false,
        child: icon,
        onPressed: () {
          insertNewCard();
          print("Add a credit card");
        },
      ),
    );
  }

   void insertNewCard() {
    CredCard card = CredCard(
      id: this.lista_card.length + 1,
      number: '4929 5113 6426 1996',
      expiration: '10/2021',
      cvv: 191,
      holder: 'MÁCIO FERNANDO SALES'
      );
      setState(() {
        this.lista_card.add(card);
      });
    // this.lista_card.add(card);
    print("Novo cartão adicionado com sucesso!");
  }

  GestureDetector _buildCredCard({ 
    @required Color color, 
    @required String cardNumber, 
    @required String cardHolder, 
    @required String cardExpiration,
    BuildContext context
    }) {
    return GestureDetector(
        onTap: () {
          showCustomDialog(context);
          print(cardHolder);
        },
        child: CredDebitCard(
          color: color,
          number: cardNumber,
          holder: cardHolder,
          expiration: cardExpiration,
        )
    );
    
  }
}
