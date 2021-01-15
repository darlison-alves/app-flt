import 'package:SHOP_APP/components/masks/mask-input-number-card.mask.dart';
import 'package:flutter/material.dart';

class CardForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => CardFormState();
}

class CardFormState extends State<CardForm> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          TextFormField(
            inputFormatters: [
              MaskedTextInputFormatter(mask: 'xxxx xxxx xxxx xxxx', separator: ' ')
            ],
            keyboardType: TextInputType.number,
          )
        ],
      ),
    );
  }

}
