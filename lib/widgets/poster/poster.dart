import 'package:flutter/material.dart';

import '../../gen/assets.gen.dart';

class Poster extends StatelessWidget {
  const Poster({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          width: size.width/1.19,
          height: size.height/4.2,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(image: Image.asset(Assets.images.posterImage.path).image),
          ),
        ),
      ],
    );
  }
}