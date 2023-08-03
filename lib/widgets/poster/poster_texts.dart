import 'package:flutter/material.dart';
import 'package:tech_blog/widgets/poster/my_texts.dart';

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
                text: 'امین عزیز - یک روز پیش',
                fontSize: littleFontSize,
                fontWeight: littleFontWeight),
            MyTexts(
              text: 'Like 999',
              fontSize: littleFontSize,
              fontWeight: littleFontWeight,
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
