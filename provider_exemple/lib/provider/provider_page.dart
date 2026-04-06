import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_exemple/provider/user_model.dart';

class ProviderPage extends StatelessWidget {

  const ProviderPage({ super.key });

   @override
   Widget build(BuildContext context) {
    var user = Provider.of<UserModel>(context); // para pegar o provider
    // var user = context.watch<UserModel>();
       return Scaffold(
           appBar: AppBar(title: const Text('Provider'),),
           body: Center(
             child: Padding(
               padding: const EdgeInsets.all(10.0),
               child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(user.imgAvatar),
                    radius: 60,
                  ),
                  Text(
                    user.name,
                    style: TextStyle(
                      fontSize: 30
                      ),
                    ),
                  Text(
                    user.birthDate,
                    style: TextStyle(
                      fontSize: 20
                      ),
                    ),
                ],
               ),
             ),
           ),
       );
  }
}