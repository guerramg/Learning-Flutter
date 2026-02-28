import 'package:flutter/material.dart';
import 'package:flutter_state_manager/setState/imc_setstate_page.dart';

class HomePage extends StatelessWidget {

  const HomePage({ Key? key }) : super(key: key );

  void _goToPage(BuildContext context, Widget page){ //OUTRA FORMA DE NAVEGAÇÃO
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => page));
  }

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('Home Page'),),
           body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               ElevatedButton(
                onPressed: (){
                    _goToPage(context, ImcSetstatePage());
                },
                child: Text('Set State'),
                ),
                SizedBox(height: 20,),
                ElevatedButton(
                  onPressed: (){
                  },
                  child: Text('ValueNotifier'),
                ),
                SizedBox(height: 20,),
                ElevatedButton(
                  onPressed: (){

                  },
                  child: Text('ChangeNotifier'),
                ),
                SizedBox(height: 20,),
                ElevatedButton(onPressed: (){

                },
                  child: Text('Bloc Pattern(Stream)'),
                  )
              ]
            ),
           ),
       );
  }
}