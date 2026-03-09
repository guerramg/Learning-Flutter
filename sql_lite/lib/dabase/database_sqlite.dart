import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseSqLite {
  Future<Database> openConnection() async {
  // Future<void> openConnection() async {
    final databasePath = await getDatabasesPath();
    final databaseFinalPath = join(databasePath, 'SQLITE_EXEMPLE');

    return await openDatabase(databaseFinalPath, version: 1,
        //CHAMADO NO MOMENTO DA CRIAÇÃO DO BANCO DE DADOS
        //PRIMEIRA VEZ QUE CARREGA O APLICATIVO
        onCreate: (Database db, int version) {
      print('onCreate');
      final batch = db.batch();

      batch.execute('''
        create table teste(
          id Integer primary key autoincrement,
          nome varchar(200)
        )
      ''');
      batch.execute('''
        create table produtos(
          id Integer primary key autoincrement,
          produto varchar(200)
        )
      ''');
      batch.execute('''
        create table categoria(
          id Integer primary key autoincrement,
          produto varchar(200)
        )
      ''');
      batch.commit();
    },
        //CHAMADO SEMPRE QUE HOUVER UMA ALTERAÇÃO NO VERSION INCREMENTA (1=>2)
        onUpgrade: (Database db, int oldVersion, int version) {
      print('onUpgrade');
      final batch = db.batch();

      if (oldVersion == 1) {
        batch.execute('''
        create table produtos(
          id Integer primary key autoincrement,
          produto varchar(200)
        )
      ''');
      batch.execute('''
        create table categoria(
          id Integer primary key autoincrement,
          produto varchar(200)
        )
      ''');
      batch.commit();
      }
    },
        //CHAMADO SEMPRE QUE HOUVER UMA ALTERAÇÃO NO VERSION DECREMENTA (2=>1)
        onDowngrade: (db, oldVersion, newVersion) {
      // print('onDowngrade');
    });
  }
}
