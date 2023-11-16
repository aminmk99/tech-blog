import 'package:flutter/material.dart';
import 'package:tech_blog/constants/components/most_hot_title.dart';
import 'package:tech_blog/constants/my_colors.dart';
import 'package:tech_blog/widgets/hashtags/hashtag.dart';
import 'package:tech_blog/constants/components/my_app_bar/my_app_bar.dart';
import 'package:tech_blog/widgets/podcast_list/podcast_list.dart';

import '../Data/blog_list.dart';
import '../Data/podcasts_list.dart';
import '../Data/tags_list.dart';
import '../constants/my_strings.dart';
import '../widgets/blogs_list/blogs_list.dart';
import '../widgets/poster/poster.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final sizeBetweenAppBarPoster = size.height / 50;
    final bodyMargin = size.width / 10;
    return Scaffold(
      appBar: AppBar(
        // elevation: 0,
        backgroundColor: Colors.white,
        title: const MyAppBar(),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
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
            MostHotTitle(
              bodyMargin: bodyMargin,
              iconAddress: 'assets/icons/bluepen.png',
              title: MyStrings.viewMostHottestEssays,
            ),
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
            const SizedBox(height: 32),
            MostHotTitle(
              bodyMargin: bodyMargin,
              iconAddress: 'assets/icons/mic.png',
              title: MyStrings.viewMostHottestPodcasts,
            ),
            SizedBox(
              height: size.height / 3.5,
              child: ListView.builder(
                itemCount: podcastList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) => PodcastsList(
                      bodyMargin: bodyMargin,
                      index: index,
                      size: size,
                    )),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: size.height / 10,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: GradientColors.bottomNavBg,
          ),
        ),
      ),
    );
  }
}
