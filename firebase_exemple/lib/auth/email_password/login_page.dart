import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {

  const LoginPage({ super.key });

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final emailEC = TextEditingController();
  final passwordEC = TextEditingController();

  @override
  void dispose() {
    emailEC.dispose();
    passwordEC.dispose();
    super.dispose();
  }

  Future<void> login() async {
    final email = emailEC.text.trim();
    final password = passwordEC.text.trim();

    final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(

      email: email,
      password: password
      );

      final user = credential.user;

      if(user != null && !user.emailVerified) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('E-mail não verificado. Por favor, verifique seu e-mail.')),
        );
      }else{
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Login bem-sucedido!')),
        );
      }

      credential.user?.sendEmailVerification(); //VERIFICAR SE O USUÁRIO ESTÁ VERIFICADO, SE NÃO ESTIVER, ENVIAR O E-MAIL DE VERIFICAÇÃO

    print(credential.user?.email);
    print(credential.user?.emailVerified);
    print(credential.user?.uid);
  }

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('Login do Usuário'),),
           body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  TextField(
                    controller: emailEC,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      labelText: 'E-mail',
                      hintText: 'Digite seu e-mail',
                    ),
                  ),
                  TextField(
                    controller: passwordEC,
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText: 'Senha',
                      hintText: 'Digite sua senha',
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        login();
                      }
                      , child: const Text('Login'),
                      ),
                ],
              ),
            ),
            ),
       );
  }
}