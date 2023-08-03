import 'package:flutter/material.dart';
import 'package:tech_blog/widgets/MyAppBar/my_appbar.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            MyAppBar(),
          ],
        ),
      ),
    );
  }
}
