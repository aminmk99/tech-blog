import 'package:flutter/material.dart';

import '../../constants/my_colors.dart';
import '../../models/fake_data.dart';

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
          image: AssetImage(homePagePosterMap["imageAsset"]),
          fit: BoxFit.cover,
        ),
      ),
      foregroundDecoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        gradient: const LinearGradient(
          colors: GradientColors.posterCover,
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
    );
  }
}
