import 'dart:async';
import 'package:SHOP_APP/domain/model/cred_card.model.dart';
import 'package:sqflite/sqflite.dart';

final Future<Database> database = openDatabase(
 'cards_database.db',
  onCreate: (db, version) {
    return db.execute(
      'CREATE TABLE card_cred(id INTEGER PRIMARY KEY, number TEXT, holder TEXT, expiration TEXT)'
    );
  },
  version: 1
);

Future<void> insertCard(CredCard card) async {
  final Database db = await database;
  await db.insert('card_cred', card.toMap(), conflictAlgorithm: ConflictAlgorithm.replace);
}