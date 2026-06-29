import 'package:flutter/material.dart';
    
class AndroidPage extends StatelessWidget {

  const AndroidPage({ Key? key }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Icon(Icons.android, size: 50)),
    );
  }
}