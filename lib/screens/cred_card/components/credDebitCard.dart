import 'package:flutter/material.dart';

class CredDebitCard extends Card {
  const CredDebitCard({
    Key key, this.color, this.number, this.holder, this.expiration,
  }) : super(key: key);

  final Color color;
  final String number;
  final String holder;
  final String expiration;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      color: color,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      child: Container(
        height: 200,
        padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 22.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            _buildLogosBlock(),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Text(
                this.number,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 21,
                  fontFamily: 'CourrierPrime'
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildDetailsBlock(label: 'CARDHOLDER', value: this.holder),
                _buildDetailsBlock(label: 'VALID THRU', value: this.expiration)
              ],
            ),
            
          ],  
        ),
      )
    );
  }

  Row _buildLogosBlock() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset("assets/images/contact_less.png", height: 20, width: 18,),
        Image.asset("assets/images/mastercard.png", height: 50, width: 50)        
      ],
    );
  }

  Column _buildDetailsBlock({ @required String label, @required String value }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(label, style: TextStyle(color: Colors.white, fontSize: 9, fontWeight: FontWeight.bold),),
        Text(value, style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),)
      ],
    );
  } 

}