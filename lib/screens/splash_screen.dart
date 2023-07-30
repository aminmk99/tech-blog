import 'package:flutter/material.dart';

import '../gen/assets.gen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    print('The size of height is ${size.height}');
    print('The size of width is ${size.width}');
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(Assets.images.splashScreenImage.path, height: size.height/11.5)
            ],
          ),
        ),
      ),
    );
  }
}