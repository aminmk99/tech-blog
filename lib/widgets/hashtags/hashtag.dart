import 'package:flutter/material.dart';

import '../../Data/tags_list.dart';
import '../../constants/my_colors.dart';

class HashtagWidget extends StatelessWidget {
  final int index;
  final bodyMargin;

  const HashtagWidget(
      {super.key, required this.index, required this.bodyMargin});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: index == tagList.length - 1 ? bodyMargin : 0,
        top: 8,
        right: index == 0 ? bodyMargin : 15,
        bottom: 8,
      ),
      child: Container(
        height: 56,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: const LinearGradient(colors: GradientColors.tags),
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.only(start: 10, end: 25),
          child: Row(
            children: [
              const ImageIcon(
                AssetImage("assets/icons/hashtagicon.png"),
                size: 14,
                color: Colors.white,
              ),
              const SizedBox(width: 12),
              Text(tagList[index].title, style: const TextStyle(color: Colors.white))
            ],
          ),
        ),
      ),
    );
  }
}
