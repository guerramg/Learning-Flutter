import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {

  const RegisterPage({ super.key });

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  final emailEC = TextEditingController();
  final passwordEC = TextEditingController();

  @override
  void dispose() {
    emailEC.dispose();
    passwordEC.dispose();
    super.dispose();
  }

  Future<void> registerUser() async {
    final email = emailEC.text.trim();
    final password = passwordEC.text.trim();

    final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email,
      password: password
      );

      credential.user?.sendEmailVerification(); //ENVIAR O E-MAIL DE VERIFICAÇÃO APÓS O USUÁRIO SE REGISTRAR
  }

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('Cadastro de Usuário'),),
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
                        registerUser();
                      }
                      , child: const Text('Registrar Usuário'),
                      ),
                ],
              ),
            ),
            ),
       );
  }
}