
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:todo_list_provider/app/modules/auth/login/login_controller.dart';
// import 'package:todo_list_provider/app/modules/auth/login/login_page.dart';
// import 'package:todo_list_provider/app/modules/auth/register/register_controller.dart';
// import 'package:todo_list_provider/app/modules/auth/register/register_page.dart';

// class AuthModule {
//   AuthModule(): super(
//     bindings: [
//       ChangeNotifierProvider(
//         create: (_) => LoginController(),
//         ),
//         ChangeNotifierProvider(
//         create: (_) => RegisterController(),
//         ),// Add your bindings here
//     ],
//     routers: {
//       '/login': (context) => const LoginPage(),
//       '/register': (context) => const RegisterPage(),
//     },
//   ) {
//     // Add your dependencies here
//   }
// }