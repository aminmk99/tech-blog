import 'package:flutter/material.dart';
import 'package:tech_blog/widgets/poster/poster_image.dart';
import 'package:tech_blog/widgets/poster/poster_texts.dart';

class Poster extends StatelessWidget {
  const Poster({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PosterImage(),
        Positioned(
          bottom: 0,
          right: 0,
          left: 0,
          child: PosterTexts(),
        ),
      ],
    );
  }
}
