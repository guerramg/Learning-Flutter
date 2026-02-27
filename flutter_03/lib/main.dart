import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_03/pages/botoes_rotacao_texto/botoes_rotacao_texto_page.dart';
import 'package:flutter_03/pages/botton_navigator_bar/botton_navigator_bar.dart';
import 'package:flutter_03/pages/cidades/cidades_page.dart';
import 'package:flutter_03/pages/circle_avatar/circle_avatar_page.dart';
import 'package:flutter_03/pages/container/container_page.dart';
import 'package:flutter_03/pages/dialogs/dialog_custom.dart';
import 'package:flutter_03/pages/dialogs/dialog_page.dart';
import 'package:flutter_03/pages/forms/forms_page.dart';
import 'package:flutter_03/pages/home/home_page.dart';
import 'package:flutter_03/pages/layout_builder/layout_builder_page.dart';
import 'package:flutter_03/pages/media_query/media_query_page.dart';
import 'package:flutter_03/pages/rows_columns/rows_colunms_page.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter_03/pages/scrolls/listview.dart';
import 'package:flutter_03/pages/snackbar/snackbar_page.dart';
import 'package:flutter_03/pages/scrolls/singlechildscrollview_page.dart';
import 'package:flutter_03/pages/stack/stack_page.dart'; // IMPORTAÇÃO PARA TESTAR O LAYOUT EM DISPOSITIVOS DIFERENTES

void main() {
  runApp(DevicePreview(
    enabled: false, //!kReleaseMode,
    builder: (context) => const MyApp(),
  ));
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context), 
      builder: DevicePreview.appBuilder,
      title: 'Widgets Flutter',
      theme: ThemeData( //CONFIGURAR TEMA DO APP
        primaryColor: Colors.red,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.deepPurple,
          foregroundColor: Colors.white,
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      routes: {
        '/': (context) => const HomePage(),
        '/container': (context) => const ContainerPage(),
        '/rows_colunms': (context) => const RowsColunmsPage(),
        '/media_query': (context) => const MediaQueryPage(),
        '/layout_builder': (context) => const LayoutBuilderPage(),
        '/botoes_texto': (context) => const BotoesRotacaoTextoPage(),
        '/single_child_scroll_view': (context) => const SinglechildscrollviewPage(),
        '/list_view': (context) => const Listview(),
        '/dialog_page': (context) => const DialogPage(),
        '/snackbar_page': (context) => const SnackbarPage(),
        '/forms_page': (context) => const FormsPage(),
        '/cidades': (context) => const CidadesPage(),
        '/stack': (context) => const StackPage(),
        '/botton_navigator': (context) =>  const BottonNavigatorBar(),
        '/circle_avatar': (context) => const CircleAvatarPage()
        
      },
    );
  }
}
