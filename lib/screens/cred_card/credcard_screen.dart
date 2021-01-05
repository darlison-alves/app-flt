import 'package:SHOP_APP/database_helper.dart';
import 'package:SHOP_APP/domain/cred-card/add-card.dart';
import 'package:flutter/material.dart';

class CredCardScreen extends StatelessWidget {

  static String routeName = '/cred_card';

  final dbHelper = DatabaseHelper.instance; 

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("List Cred/Debit cards")),
      body: AddCard()
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
          //insertNewCard();
          print("Add a credit card");
        },
      ),
    );
  }


  void _insert() async {
    Map<String, dynamic> row = {
      DatabaseHelper.columnName: "Darlinson Alves",
      DatabaseHelper.columnIdade: 28
    };

    final id = await dbHelper.insert(row);
    print('linha inserida id: $id');
  }

  void _findAll() async {
    final itens = await dbHelper.findAll();
    print("Consulta todos os itens");
    itens.forEach((element) { 
      print(element);
    });
  }

}

