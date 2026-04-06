import 'package:flutter/material.dart';
import 'package:todo_list_provider/app/core/database/sqlite_adm_connection.dart';
import 'package:todo_list_provider/app/core/iu/todo_list_ui-config.dart';
// import 'package:todo_list_provider/app/modules/auth/auth_module.dart';
import 'package:todo_list_provider/app/modules/auth/login/login_page.dart';
import 'package:todo_list_provider/app/modules/auth/register/register_page.dart';
import 'package:todo_list_provider/app/modules/splash/splash_page.dart';

class AppWidget extends StatefulWidget {

  const AppWidget({ super.key });

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
final sqliteAdmConnection = SqliteAdmConnection();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(sqliteAdmConnection);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(sqliteAdmConnection);
    super.dispose();
  }
   @override
   Widget build(BuildContext context) {
       return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Todo List Provider',
        // initialRoute: 'login',
        theme: TodoListUiConfig.theme,
               routes: {
                '/': (context) => SplashPage(),
                '/login': (context) => LoginPage(),
                '/register': (context) => const RegisterPage(),
               }
              //  routes: {
              //   ...AuthModule().routers
              //  },
       );
  }

}