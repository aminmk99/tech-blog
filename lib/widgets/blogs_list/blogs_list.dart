import 'package:flutter/material.dart';
import 'package:tech_blog/models/fake_data.dart';

import '../../constants/my_colors.dart';
import '../poster/my_texts.dart';

class BlogsList extends StatelessWidget {
  final double bodyMargin;
  final int index;
  final Size size;

  final double littleFontSize = 14;
  final double bigFontSize = 18;

  final littleFontWeight = FontWeight.w400;
  final bigFontWeight = FontWeight.bold;

  const BlogsList({
    super.key,
    required this.bodyMargin,
    required this.index,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Colors.amber,
        child: Padding(
          padding: EdgeInsets.fromLTRB(
            index == 7 - 1 ? bodyMargin : 0,
            8,
            index == 0 ? bodyMargin : 15,
            8,
          ),
          child: Column(
            children: [
              SizedBox(
                height: size.height / 5.3,
                width: size.width / 2.3,
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: NetworkImage(blogList[index].imageUrl),
                          fit: BoxFit.cover,
                        ),
                      ),
                      foregroundDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: const LinearGradient(
                          colors: GradientColors.blogPost,
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 8,
                      right: 0,
                      left: 0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          MyTexts(
                            text: blogList[index].writer,
                            fontSize: littleFontSize,
                            fontWeight: littleFontWeight,
                          ),
                          Row(
                            children: [
                              MyTexts(
                                text: blogList[index].views,
                                fontSize: littleFontSize,
                                fontWeight: littleFontWeight,
                              ),
                              const SizedBox(width: 8),
                              const Icon(Icons.remove_red_eye_sharp,
                                  color: Colors.white, size: 20)
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: size.width / 2.3,
                child: Text(
                  blogList[index].title,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: const TextStyle(fontSize: 14),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
