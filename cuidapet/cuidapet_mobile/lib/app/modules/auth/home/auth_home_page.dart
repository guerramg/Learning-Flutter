import 'package:cuidapet_mobile/app/core/ui/extensions/size_screen_extension.dart';
import 'package:cuidapet_mobile/app/models/user_model.dart';
import 'package:cuidapet_mobile/app/modules/core/auth/auth_store.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

class AuthHomePage extends StatefulWidget {

  final AuthStore _authStore;

  const AuthHomePage({ super.key, required AuthStore authStore }) : _authStore = authStore;

  @override
  State<AuthHomePage> createState() => _AuthHomePageState();
}

class _AuthHomePageState extends State<AuthHomePage> {

  @override
  initState() {
    super.initState();
    reaction<UserModel?>((_) => widget._authStore.userLogged, (userLogger){
      if(userLogger != null && userLogger.email.isNotEmpty) {
        Navigator.of(context).pushReplacementNamed('/auth/login');
      } else {
        Navigator.of(context).pushReplacementNamed('/auth/login');
      }
    });
  }

   @override
   Widget build(BuildContext context) {
       return Scaffold(
          //  appBar: AppBar(title: const Text('Auth Home Page'),),
           body: Center(
            child: Image.asset('assets/images/logo.png',
              width: 200.w,
              // height: 180,
              fit: BoxFit.contain,
            ),
          ),
       );
  }
}

extension on AuthStore {
  UserModel? get userLogged => null;
}