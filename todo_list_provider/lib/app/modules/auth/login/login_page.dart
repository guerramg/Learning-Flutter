import 'package:flutter/material.dart';
import 'package:todo_list_provider/app/core/widget/todo_list_field.dart';
import 'package:todo_list_provider/app/core/widget/todo_list_logo.dart';
import 'package:sign_button/sign_button.dart';

class LoginPage extends StatelessWidget {

  const LoginPage({ super.key });

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           body: LayoutBuilder(
            builder: (context, constraints){
              return SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: constraints.maxHeight,
                    minWidth: constraints.maxWidth
                  ),
                  child: IntrinsicHeight(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          height: 50,
                        ),
                        TodoListLogo(),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                          child: Form(
                            child: Column(
                              children: [
                                TodoListField(label: 'Email'),
                                SizedBox(height: 20),
                                TodoListField(label: 'Senha', obscureText: true, hasIcon: true),
                                SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    TextButton(
                                      onPressed:() {},
                                       child: Text('Esqueceu sua senha?'),
                                       ),
                                    ElevatedButton(
                                      onPressed: (){},
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(15)
                                        )
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Text('Login'),
                                      ),
                                      )
                                  ],
                                )
                              ],
                            )),
                        ),
                        SizedBox(height: 20),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xfff0f3f7),
                              border: Border(
                                top: BorderSide(
                                  width: 2,
                                  color: Colors.grey.withAlpha(50)
                                ),
                                ),
                            ),
                              child: Column(
                                children: [
                                  SizedBox(height: 30),
                                  SignInButton(
                                  buttonType: ButtonType.google,
                                  onPressed: (){
                                    
                                  },
                                  btnText: 'Continue com Google',
                                  padding: 5,
                                  btnTextColor: Colors.blue[600],
                                  shape: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: BorderSide.none
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Não tem Conta?'),
                                    TextButton(
                                      onPressed: (){
                                          Navigator.pushNamed(context, '/register');
                                      },
                                      child: Text('Cadastre-se')
                                      ),

                                  ],
                                )
                              ],
                            ),
                          ),
                          )
                      ],
                    ),
                  ),
                  ),
              );
            }
            ),
       );
  }
}