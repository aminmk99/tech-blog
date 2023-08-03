import 'package:flutter/material.dart';
import 'package:tech_blog/widgets/top_icons.dart';
import '../gen/assets.gen.dart';


class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        TopIcons(icon: Icons.menu),
        Image.asset(Assets.images.splashScreenImage.path, height: size.height/13.7),
        TopIcons(icon: Icons.search),
      ],
    );
  }
}