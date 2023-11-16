import 'package:flutter/material.dart';

import '../my_colors.dart';

class MostHotTitle extends StatelessWidget {
  final double bodyMargin;
  final String iconAddress;
  final String title;

  const MostHotTitle({
    super.key,
    required this.bodyMargin,
    required this.iconAddress,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: bodyMargin, bottom: 10),
      child: Row(
        children: [
          ImageIcon(
            // AssetImage('assets/icons/bluepen.png'),
            AssetImage(iconAddress),
            size: 20,
            color: SolidColors.bluePenIcon,
          ),
          const SizedBox(width: 15),
          Text(
            title,
            style: TextStyle(
              color: SolidColors.titleClr,
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          )
        ],
      ),
    );
  }
}
