import 'package:flutter/material.dart';

class RowsColunmsPage extends StatelessWidget {

  const RowsColunmsPage({ super.key });

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('Rows e Colunms'),),
           body: Container(
            color: Colors.red,
            width: 400,
            // margin: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  color: Colors.black87,
                  child: Text('Linha 1', style: TextStyle(color: Colors.white),),
                  ),
                Text('Linha 2'),
                Text('Linha 3'),
                    Container(
                      height: 200,
                      color: Colors.green,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        // crossAxisAlignment: CrossAxisAlignment.start ,
                        children: [
                          Text('Row 1', style: TextStyle(color: Colors.white),),
                          Text('Row 2', style: TextStyle(color: Colors.white),),
                        ],
                      ),
                    )
                  ],
            ),
           ),
       );
  }
}