import 'package:counter_bloc/page_bloc/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBlocPage extends StatelessWidget {
  const CounterBlocPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
        backgroundColor: Color.fromARGB(255, 9, 103, 185),
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) => Text(
                'Counter ${state.counter}',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton.icon(
                  onPressed: (){
                    context.read<CounterBloc>().add(CounterIncremented());
                  },
                  icon: Icon(Icons.add),
                  label: Text(''),
                  ),
                  TextButton.icon(
                  onPressed: (){
                    context.read<CounterBloc>().add(CounterDecremented());
                  },
                  icon: Icon(Icons.remove),
                  label: Text(''),
                  ),
              ],
            ),
          ],
        ),
        ),
    );
  }
}
