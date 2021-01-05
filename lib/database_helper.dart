import 'dart:io';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  
  static final String _databaseName = "ExemploDB.db";
  static final int _databaseversion = 1;

  static final String table = "contato";

  static final String columnId = '_id';
  static final String columnName = 'nome';
  static final String columnIdade = 'idade';

  //torna esta classe singleton
  DatabaseHelper._privateConstructor();

  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();

  //tem somente uma referência ao banco de dados
  static Database _database;
  
  //abre o banco de dados e o cria se ele não existir
  _initDatabase() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, _databaseName);
    return await openDatabase(path, version: _databaseversion, onCreate: _onCreate);
  }

  //Código SQL para criar o banco de dados e a tabela
  Future _onCreate(Database db, int version) async {
    await db.execute('''CREATE TABLE $table (
      $columnId INTEGER PRIMARY KEY,
      $columnName TEXT NOT NULL,
      $columnIdade INTAGER NOT NULL )
      ''');
  }

  Future<Database> get database async {
    if(_database != null) return _database;
    _database = await _initDatabase();
    return _database;
  }

  Future<int> delete(int id) async {
    Database db = await instance.database;
    return await db.delete(table, where: '$columnId = ?', whereArgs: [id] );
  }

  //métodos Helper
  //------------------------------------------
  //Insere um linha no banco de dados onde cada chave
  //no Map é um nome de coluna e o valor é o valor da coluna
  //O valor de retorno é o id da linha inserida
  Future<int> insert (Map<String, dynamic> row) async {
    Database db = await instance.database;
    return await db.insert(table, row);
  }

  Future<List<Map<String, dynamic>>> findAll() async {
    Database db = await instance.database;
    return await db.query(table);
  }

}