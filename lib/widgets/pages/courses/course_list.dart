import 'package:flutter/material.dart';

import 'card_course.dart';

class CourseListWidget extends StatelessWidget {
  const CourseListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          CourseCard(
            imageUrl: 'assets/images/c1.png',
          ),
          CourseCard(
            imageUrl: 'assets/images/photo.png',
          ),
          CourseCard(
            imageUrl: 'assets/images/c1.png',
          ),
          CourseCard(
            imageUrl: 'assets/images/photo.png',
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.3),
                borderRadius: BorderRadius.circular(50)),
            child: Icon(Icons.arrow_forward_ios_rounded),
          )
        ],
      ),
    );
  }
}
