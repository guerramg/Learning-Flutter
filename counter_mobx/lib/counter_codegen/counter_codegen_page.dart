import 'package:counter_mobx/counter_codegen/counter_codegen_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class CounterCodeGenPage extends StatelessWidget {
final controller = CounterCodeGenController();

  CounterCodeGenPage({ super.key });
   @override
   Widget build(BuildContext context) {
       return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Counter Codegen Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            const Text('You have pushed the button this many times:'),
            Observer(
              builder: (_){
               return Text(
              '${controller.counter}',
              style: Theme.of(context).textTheme.headlineMedium,
            );
              }
              ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          controller.increment();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}