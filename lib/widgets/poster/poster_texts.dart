import 'package:flutter/material.dart';
import 'package:tech_blog/widgets/poster/my_texts.dart';

import '../../Data/poster.dart';

class PosterTexts extends StatelessWidget {
  const PosterTexts({super.key});

  final double littleFontSize = 14;
  final double bigFontSize = 18;

  final littleFontWeight = FontWeight.w400;
  final bigFontWeight = FontWeight.bold;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            MyTexts(
              text:
                  "${homePagePosterMap['writer']} - ${homePagePosterMap['date']}",
              fontSize: littleFontSize,
              fontWeight: littleFontWeight,
            ),
            Row(
              children: [
                MyTexts(
                  text: homePagePosterMap['view'],
                  fontSize: littleFontSize,
                  fontWeight: littleFontWeight,
                ),
                const SizedBox(width: 8),
                const Icon(Icons.remove_red_eye_sharp,
                    color: Colors.white, size: 20)
              ],
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: MyTexts(
            text: 'دوازده قدم برنامه نویسی یک دوره ی ...',
            fontSize: bigFontSize,
            fontWeight: bigFontWeight,
          ),
        )
      ],
    );
  }
}
