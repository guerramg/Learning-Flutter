import 'package:flutter/material.dart';

class CircleAvatarPage extends StatelessWidget {
  const CircleAvatarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Circle Avatar')),
      body: Padding(
        padding: EdgeInsetsGeometry.directional(top: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ImageAvatar(
              urlImage:
                  'https://super.abril.com.br/wp-content/uploads/2018/07/mr-bean.png?quality=70&w=720&crop=1',
            ),
            ImageAvatar(
              urlImage:
                  'https://pbs.twimg.com/profile_images/1275577403872591874/uEAiZDTo_400x400.jpg',
            ),
            ImageAvatar(
              urlImage:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSE6so1T29bFclnu9GEcbyetTmtHoohnHt6zQ&s',
            ),
            // ImageAvatar(
            //   urlImage: 'https://png.pngtree.com/png-vector/20250902/ourlarge/pngtree-alien-being-with-prominent-eyes-and-slim-figure-png-image_17211176.webp'
            //   )
          ],
        ),
      ),
    );
  }
}

class ImageAvatar extends StatelessWidget {
  final String urlImage;
  const ImageAvatar({super.key, required this.urlImage});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(right: 10),
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(100),
          ),
        ),
        Container(
          padding: EdgeInsets.all(5),
          width: 100,
          height: 100,
          child: CircleAvatar(backgroundImage: NetworkImage(urlImage)),
        ),
        Container(
          width: 100,
          height: 100,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.red,
                ),
              padding: EdgeInsets.all(5),
              child: Text('Ao Vivo', style: TextStyle(color: Colors.white, fontSize: 12),),
            ),
          ),
        ),
      ],
    );
  }
}
