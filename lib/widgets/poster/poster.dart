import 'package:flutter/material.dart';
import 'package:tech_blog/widgets/poster/poster_image.dart';

class Poster extends StatelessWidget {
  const Poster({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Stack(
      children: [
        PosterImage(),
      ],
    );
  }
}