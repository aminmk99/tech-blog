import 'package:flutter/material.dart';
import 'package:tech_blog/widgets/MyAppBar/my_appbar.dart';

import '../widgets/poster/poster.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var sizeBetweenAppBarPoster = size.height/97.6;
    print(size.height);
    print(size.width);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            MyAppBar(),
            SizedBox(height: sizeBetweenAppBarPoster),
            Poster(),
          ],
        ),
      ),
    );
  }
}
