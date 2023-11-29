import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;

  SlideInfo(
     this.title, 
     this.caption, 
     this.imageUrl
    );
    
  
}

final slides = <SlideInfo>[
  SlideInfo('Busca la comida', 'Excepteur cupidatat duis enim consequat amet commodo Lorem dolore in veniam. Labore deserunt et ea anim eiusmod ipsum nostrud do. Deserunt culpa ut ipsum dolore cillum duis dolore exercitation dolor exercitation sunt laborum est. Proident et do aute voluptate sunt nulla est. Consequat ut sit in Lorem ipsum sunt.', 'assets/images/1.png'),
  SlideInfo('Entrga rapida', 'Laborum dolor fugiat laborum et anim irure est nisi aliqua. Exercitation anim incididunt tempor sint enim reprehenderit labore. Enim consequat mollit Lorem ut ad cillum eiusmod. Adipisicing sunt anim do et dolore adipisicing amet mollit mollit ad. Veniam qui ut anim qui eu aliquip occaecat laborum ut elit.', 'assets/images/2.png'),
  SlideInfo('Disfruta la comida', 'Irure eiusmod eu consequat consectetur in consectetur est ullamco quis exercitation. Est commodo id duis consectetur velit. Do dolore velit voluptate quis cupidatat reprehenderit non velit.', 'assets/images/3.png'),

];





class AppTutorialScreen extends StatefulWidget {

  static const name = 'App_Tutorial_screen';
  
  const AppTutorialScreen({super.key});

  @override
  State<AppTutorialScreen> createState() => _AppTutorialScreenState();
}

class _AppTutorialScreenState extends State<AppTutorialScreen> {

 final PageController pageViewController = PageController();

 bool endReached = false;


  @override
  void initState() {
    super.initState();

    pageViewController.addListener(() {

      final page = pageViewController.page ?? 0;

      if ( !endReached && page >= (slides.length - 1.5) ) {
        setState(() {
          endReached = true;
        });
        
      }

    });
  }

  @override
  void dispose() {
    pageViewController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            controller: pageViewController,
            physics: const BouncingScrollPhysics(),
            children:
              slides.map(
                (slideData) => _Slide(
                  caption: slideData.caption, 
                  imageUrl: slideData.imageUrl, 
                  title: slideData.title
                )
              ).toList(),
          ),
          Positioned(
            right: 20,
            top: 50,
            child: TextButton(
              child: const Text('salir'),
              onPressed: () => context.pop(),
              )
          ),

          endReached ?
           Positioned(
            bottom: 30,
            right: 30,
            child: FadeInRight(
              from: 15,
              delay: const Duration(seconds: 1),
              child: FilledButton(
                child: const Text('Comenzar'),
                onPressed: () => context.pop(),
                ),
            )
            ): const SizedBox(),
        ],
      ),
    );
  }
}


class _Slide extends StatelessWidget {

  final String title;
  final String caption;
  final String imageUrl;

  const _Slide({
    required this.caption,
    required this.imageUrl,
    required this.title
  });

  @override
  Widget build(BuildContext context) {

    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.bodySmall;


    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(image: AssetImage(imageUrl),),
            const SizedBox(height: 20,),
            Text(title, style: titleStyle,),
            const SizedBox(height: 10,),
            Text(caption, style: captionStyle,)
          ],
          )
        ),
      );
  }
}