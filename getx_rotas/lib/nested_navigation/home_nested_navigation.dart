import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_rotas/nested_navigation/pages/android_page.dart';
import 'package:getx_rotas/nested_navigation/pages/apple_page.dart';
import 'package:getx_rotas/rotas_nomeadas/page_404.dart';
    
class HomeNestedNavigation extends StatelessWidget {

final currentBottomIndex = 0.obs;
  
   HomeNestedNavigation({ super.key });
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nested Navigation Home Page'),
      ),
      bottomNavigationBar: Obx(() { 
              return BottomNavigationBar(
              currentIndex: currentBottomIndex.value,
              onTap: (value){
                currentBottomIndex(value);
                switch(value){
                  case 0:
                  Get.offNamed('/', id: 1);
                    break;
                  case 1:
                  Get.offNamed('/apple', id: 1);
                    break;
                }
              },
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.android), label: 'Android'),
                BottomNavigationBarItem(icon: Icon(Icons.apple), label: 'Apple'),
              ],
            );
          }
        ),
      body: Navigator(
        key: Get.nestedKey(1),
        initialRoute: '/',
        onGenerateRoute: (settings){

          Widget page;
          Transition transition;

          if(settings.name == '/'){
            page = AndroidPage();
            transition = Transition.leftToRight;
          }else if(settings.name == '/apple'){
            transition = Transition.rightToLeft;
            page = ApplePage();
          }else{
            page = Page404();
            transition = Transition.fadeIn;
          }

          return GetPageRoute(
            page: ()=> page,
            transition: transition,
          );
        },
      ),
    );
  }
}