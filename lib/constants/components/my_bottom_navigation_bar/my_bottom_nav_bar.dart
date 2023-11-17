import 'package:flutter/material.dart';

import '../../my_colors.dart';

class MyBottomNavBar extends StatelessWidget {
  final Size size;
  final Function() onHomeClick;
  final Function() onUserClick;
  final Function() onWriteClick;

  const MyBottomNavBar({
    super.key,
    required this.size,
    required this.onHomeClick,
    required this.onUserClick,
    required this.onWriteClick,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height / 12,
      margin: EdgeInsetsDirectional.symmetric(horizontal: size.width / 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: const LinearGradient(
          colors: GradientColors.bottomNav,
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      child: Padding(
        padding:  const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: onHomeClick,
              icon: const ImageIcon(
                AssetImage('assets/icons/home.png'),
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: onWriteClick,
              icon: const ImageIcon(
                AssetImage('assets/icons/wing.png'),
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: onUserClick,
              icon: const ImageIcon(
                AssetImage('assets/icons/user.png'),
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
