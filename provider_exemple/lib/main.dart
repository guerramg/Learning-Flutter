import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_exemple/change_notifier/change_notifier_page.dart';
import 'package:provider_exemple/change_notifier/provider_controller.dart';
import 'package:provider_exemple/provider/provider_page.dart';
import 'package:provider_exemple/provider/user_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
          create: (_) {
            return UserModel(
              name: 'Bean',
              imgAvatar:
                  'https://static.wikia.nocookie.net/fantastico/images/e/e5/Rowan-Atkinson-Mr.-Bean.jpg/revision/latest?cb=20140429015338&path-prefix=pt-br',
              birthDate: '01/01/1970',
            );
          },
        ),
        ChangeNotifierProvider(
          create: (_) => ProviderController(),
          )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
        routes: {
          '/provider': (context) => ProviderPage(),
          '/notifier': (_) => ChangeNotifierPage(),
        },
        home: Builder(
          builder: (context) {
            return Scaffold(
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/provider');
                      },
                      child: Text("Provider"),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/notifier');
                      },
                      child: Text("ChangeNotifier"),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
