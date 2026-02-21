import 'package:flutter/material.dart';

enum PopUpMenuItem {
  container,
  rowsColunms,
  mediaQuery,
  layoutBuilder,
  botoesTexto,
  singleScrollView,
  listView,
  dialogPage
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        actions: [
          PopupMenuButton<PopUpMenuItem>(
            // tooltip: 'Selecione uma opção',
            // icon: Icon(Icons.zoom_in_rounded),
            // borderRadius: BorderRadius.circular(10),
            onSelected: (PopUpMenuItem item) {
              switch (item) {
                case PopUpMenuItem.container:
                  Navigator.pushNamed(context, '/container');
                  break;
                case PopUpMenuItem.rowsColunms:
                  Navigator.pushNamed(context, '/rows_colunms');
                  break;
                case PopUpMenuItem.mediaQuery:
                  Navigator.pushNamed(context, '/media_query');
                  break;
                case PopUpMenuItem.layoutBuilder:
                  Navigator.pushNamed(context, '/layout_builder');
                  break;
                case PopUpMenuItem.botoesTexto:
                  Navigator.pushNamed(context, '/botoes_texto');
                  break;
                case PopUpMenuItem.singleScrollView:
                  Navigator.pushNamed(context, '/single_child_scroll_view');
                  break;
                case PopUpMenuItem.listView:
                  Navigator.pushNamed(context, '/list_view');
                  break;
                case PopUpMenuItem.dialogPage:
                  Navigator.pushNamed(context, '/dialog_page');
                  break; 
              }
            },
            itemBuilder: (BuildContext context) {
              return <PopupMenuItem<PopUpMenuItem>>[
                PopupMenuItem(
                  value: PopUpMenuItem.container,
                  child: Text('Container'),
                ),
                PopupMenuItem(
                  value: PopUpMenuItem.rowsColunms,
                  child: Text('Rows e Colunms'),
                ),
                PopupMenuItem(
                  value: PopUpMenuItem.mediaQuery,
                  child: Text('Media Query'),
                ),
                PopupMenuItem(
                  value: PopUpMenuItem.layoutBuilder,
                  child: Text('Layout Builder'),
                ),
                PopupMenuItem(
                  value: PopUpMenuItem.botoesTexto,
                  child: Text('Botoes e Rotação de Texto'),
                ),
                PopupMenuItem(
                  value: PopUpMenuItem.singleScrollView,
                  child: Text('Single Child Scroll View'),
                ),
                PopupMenuItem(
                  value: PopUpMenuItem.listView,
                  child: Text('List View'),
                ),
                PopupMenuItem(
                  value: PopUpMenuItem.dialogPage,
                  child: Text('Dialog Page'),
                )
              ];
            },
          ),
        ],
      ),
      body: Center(child: Container()),
    );
  }
}
