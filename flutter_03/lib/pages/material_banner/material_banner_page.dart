import 'package:flutter/material.dart';

class MaterialBannerPage extends StatelessWidget {

  const MaterialBannerPage({ super.key });

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Material Banner')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                final materialBanner = MaterialBanner(
                  content: Text('Simple Material Banner, este não fecha'),
                  backgroundColor: Colors.purple[200],
                  actions: [
                    TextButton(
                      child: Text('Fechar'),
                      onPressed: (){

                      } ,
                      )
                  ],
                );
                ScaffoldMessenger.of(context).showMaterialBanner(materialBanner);
                // ignore: use_build_context_synchronously
                Future.delayed(Duration(seconds:5), () => ScaffoldMessenger.of(context).hideCurrentMaterialBanner()); //FORMA PARA FECHAR O MATERIAL BANNER APOS UM TEMPO
              },
              child: Text('Simple Material Banner'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final materialBanner = MaterialBanner(
                  content: Text('Action Material Banner este fecha'),
                  backgroundColor: const Color.fromARGB(255, 206, 157, 9),
                  actions: [
                    TextButton(
                      child: Text('Fechar'),
                      onPressed: (){
                        ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
                      },
                    )
                  ]
                );
                ScaffoldMessenger.of(context).showMaterialBanner(materialBanner);
              },
              child: Text('Action Material Banner'),
            ),
          ],
        ),
      ),
    );
  }
}