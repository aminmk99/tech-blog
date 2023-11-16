import 'package:flutter/material.dart';
import 'package:tech_blog/constants/components/most_hot_title.dart';
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
        body: SingleChildScrollView(
          child: Column(
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
              // SizedBox(
              //   height: size.height / 3.5,
              //   child: ListView.builder(
              //     itemCount: podcastList.length,
              //     scrollDirection: Axis.horizontal,
              //     itemBuilder: ((context, index) => ItemsList(
              //           bodyMargin: bodyMargin,
              //           index: index,
              //           size: size,

              //         )),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
