import 'package:flutter/material.dart';
import 'package:sql_lite/dabase/database_sqlite.dart';

class HomePage extends StatefulWidget {

  const HomePage({Key? key}) : super (key:key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    
    super.initState();
    _database();
    
  }

  _database() async {
    final database = await DatabaseSqLite().openConnection();
    // database.insert('teste', {'nome': 'Fulano'});
    // database.update('teste', {'nome': 'Ciclano'}, where: 'id=?', whereArgs: [1]);
    // database.delete('teste', where:'id=?', whereArgs: ['1']);
    // var result = await database.query('teste');
    // print(result); //SELECT
    // var result = await database.rawQuery('select * from teste');
    // print(result);
  }
   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('Home Page'),),
           body: Container(),
       );
  }
}