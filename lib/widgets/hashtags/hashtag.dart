import 'package:flutter/material.dart';

import '../../constants/my_colors.dart';
import '../../models/fake_data.dart';

class HashtagWidget extends StatelessWidget {
  final int index;
  final bodyMargin;

  const HashtagWidget(
      {super.key, required this.index, required this.bodyMargin});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        index == tagList.length - 1 ? bodyMargin : 0,
        8,
        index == 0 ? bodyMargin : 15,
        8,
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
              ImageIcon(
                AssetImage("assets/icons/hashtagicon.png"),
                size: 14,
                color: Colors.white,
              ),
              SizedBox(width: 12),
              Text(tagList[index].title, style: TextStyle(color: Colors.white))
            ],
          ),
        ),
      ),
    );
  }
}
