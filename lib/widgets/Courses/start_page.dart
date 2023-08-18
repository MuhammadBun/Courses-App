import 'package:education_app/widgets/Courses/show_topic.dart';
import 'package:flutter/material.dart';

class StartCourseScreen extends StatefulWidget {
  const StartCourseScreen({super.key});

  @override
  State<StartCourseScreen> createState() => _StartCourseScreenState();
}

class _StartCourseScreenState extends State<StartCourseScreen> {
  bool _showPageView = false;
  final List<String> aiCourseTopics = [
    "Introduction to Artificial Intelligence",
    "Machine Learning Fundamentals",
    "Neural Networks and Deep Learning",
    "Natural Language Processing",
    "Computer Vision",
    "Reinforcement Learning",
    "Ethics in AI",
    "AI in Healthcare",
    "AI in Finance",
    "AI and Robotics",
    "AI in Business",
    "Future of Artificial Intelligence",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: aiCourseTopics.length,
        itemBuilder: (context, index) {
          return ShowTopicWidget(
            topic: aiCourseTopics[index],
          );
        },
      ),
    );
  }
}
