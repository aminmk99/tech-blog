import 'package:flutter/material.dart';

import '../../constants/my_colors.dart';
import '../../gen/assets.gen.dart';

class PosterImage extends StatelessWidget {
  const PosterImage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width / 1.19,
      height: size.height / 4.2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
            image: Image.asset(Assets.images.posterImage.path).image),
      ),
      foregroundDecoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        gradient: LinearGradient(
          colors: GradientColors.posterCover,
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
    );
  }
}
