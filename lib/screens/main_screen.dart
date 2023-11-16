import 'package:flutter/material.dart';
import 'package:tech_blog/constants/my_colors.dart';
import 'package:tech_blog/widgets/hashtags/hashtag.dart';
import 'package:tech_blog/widgets/my_app_bar/my_app_bar.dart';

import '../Data/blog_list.dart';
import '../Data/tags_list.dart';
import '../constants/my_strings.dart';
import '../widgets/blogs_list/blogs_list.dart';
import '../widgets/poster/poster.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final sizeBetweenAppBarPoster = size.height / 97.6;
    final bodyMargin = size.width / 10;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            const MyAppBar(),
            SizedBox(height: sizeBetweenAppBarPoster),
            const Poster(),
            const SizedBox(height: 50),
            SizedBox(
              height: 56,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: tagList.length,
                itemBuilder: ((context, index) => HashtagWidget(
                      index: index,
                      bodyMargin: bodyMargin,
                    )),
              ),
            ),
            const SizedBox(height: 32),
            _mostHotTitle(bodyMargin),
            SizedBox(
              height: size.height / 3.5,
              child: ListView.builder(
                itemCount: blogList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) => BlogsList(
                      bodyMargin: bodyMargin,
                      index: index,
                      size: size,
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _mostHotTitle(double bodyMargin) {
  return Builder(
    builder: (context) => Padding(
      padding: EdgeInsetsDirectional.only(start: bodyMargin, bottom: 10),
      child: Row(
        children: [
          ImageIcon(
            AssetImage('assets/icons/bluepen.png'),
            size: 20,
            color: SolidColors.bluePenIcon,
          ),
          const SizedBox(width: 15),
          Text(
            MyStrings.viewMostHottestEssays,
            style: TextStyle(
              color: SolidColors.titleClr,
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          )
        ],
      ),
    ),
  );
}
