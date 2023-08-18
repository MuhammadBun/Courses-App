import 'package:education_app/widgets/Courses/course_gain.dart';
import 'package:education_app/widgets/Courses/course_inf.dart';
import 'package:education_app/widgets/Courses/description_course.dart';
import 'package:education_app/widgets/Courses/flex.dart';
import 'package:education_app/widgets/Courses/getstart.dart';
import 'package:education_app/widgets/Courses/whatyoulearn.dart';
import 'package:flutter/material.dart';

class ViewCoursesScreen extends StatefulWidget {
  const ViewCoursesScreen({super.key});

  @override
  State<ViewCoursesScreen> createState() => _ViewCoursesScreenState();
}

class _ViewCoursesScreenState extends State<ViewCoursesScreen> {
  bool _showPageView = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            flexibleSpace: FlexWidget(),
            pinned: true,
          ),
          SliverList(
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
              return Column(
                children: [
                  CourseInfoWidget(),
                  DescriptionWidget(),
                  WhatYouWillLearnWidget(),
                  CourseGainWidget(),
                  CourseGainWidget(),
                  CourseGainWidget(),
                  CourseGainWidget(),
                  CourseGainWidget(),
                  GetStartWidget(),
                ],
              );
            }, childCount: 1),
          ),
        ],
      ),
    );
  }
}
