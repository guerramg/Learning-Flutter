import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {

  const SplashPage({ super.key });

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('teste'),
           ),
           body: Column(
             children: [
               ElevatedButton(
                 onPressed: (){
                   Navigator.pushNamed(
                     context,
                     '/login'
                     );
                 },
                 child: Text('Login Page'),
                 ),
                 ElevatedButton(
                 onPressed: (){
                   Navigator.pushNamed(
                     context,
                     '/register'
                     );
                 },
                 child: Text('Register Page'),
                 ),
             ],
           ),
             
             
       );
  }
}