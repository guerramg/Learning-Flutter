import 'package:counter_mobx/future/future_controler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class FuturePage extends StatefulWidget {

  const FuturePage({ super.key });

  @override
  State<FuturePage> createState() => _FuturePageState();
}

class _FuturePageState extends State<FuturePage> {
final FutureControler controller = FutureControler();

@override
  void initState() {
    super.initState();
    controller.buscarDados();
    }

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: Text('Future'),
           ),
           floatingActionButton: FloatingActionButton(
            onPressed: (){
              controller.buscarDados();
            },
            child: Icon(Icons.chat),
           ),
           body: Center(
            child: Observer(
              builder: (_){
                return FutureBuilder(
                  future: controller.nomeFuture,
                   builder: (context, snapshot){
                    if(snapshot.connectionState == ConnectionState.waiting){
                      return CircularProgressIndicator();
                    }else if(snapshot.hasError){
                      return Text('Erro ao carregar os dados');
                    }else{
                      return Text(snapshot.data!);
                    }
                  }
                );
              },
            ),
            ),
       );
  }
}