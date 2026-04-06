import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_exemple/change_notifier/provider_controller.dart';

class ChangeNotifierPage extends StatefulWidget {
  const ChangeNotifierPage({super.key});

  @override
  State<ChangeNotifierPage> createState() => _ChangeNotifierPageState();
}

class _ChangeNotifierPageState extends State<ChangeNotifierPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((change) async {
      await Future.delayed(Duration(seconds: 3));
      context.read<ProviderController>().changeData(); //rebuilda a tela toda
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Change Notifier')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                  context.watch<ProviderController>().imgAvatar,
                ),
                radius: 60,
              ),
              Consumer<ProviderController>(
                builder: (_, controller, _) {
                  return Text(
                controller.name,
                style: TextStyle(fontSize: 30),
              );
                } ,
                ),
              Text(
                context.watch<ProviderController>().birthDate,
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
