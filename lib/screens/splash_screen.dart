import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:tech_blog/screens/main_screen.dart';

import '../constants/my_colors.dart';
import '../gen/assets.gen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3)).then((value) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => MainScreen()),
      );//Navigate to main screen
    });

    super.initState();
  }

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
              //logo
              Image.asset(Assets.images.splashScreenImage.path,
                  height: size.height / 11.5),
              SizedBox(height: 32),
              //spinkit
              SpinKitFadingCube(
                color: SolidColors.primaryClr,
                size: 50.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
