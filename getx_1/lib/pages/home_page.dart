import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_1/pages/page1.dart';

class HomePage extends StatelessWidget {

  const HomePage({ super.key });

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('Home Page'),),
           body: Column(
             children: [
               ElevatedButton(onPressed: (){
                Get.to(() => const Page1());
               }, child: Text('Pagina 1')),
             ],
           ),
       );
  }
}