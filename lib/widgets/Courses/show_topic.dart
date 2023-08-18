import 'package:education_app/widgets/Courses/topic_detail.dart';
import 'package:flutter/material.dart';

import '../navigation_animation.dart';

class ShowTopicWidget extends StatefulWidget {
  final String topic;
  const ShowTopicWidget({super.key, required this.topic});

  @override
  State<ShowTopicWidget> createState() => _ShowTopicWidgetState();
}

class _ShowTopicWidgetState extends State<ShowTopicWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: MaterialButton(
        onPressed: () {
          AnimateNavigation.goTo(context, TopicDetailWidget());
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        highlightColor: Colors.grey,
        color: Color.fromARGB(103, 72, 72, 72),
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 30),
                  width: MediaQuery.of(context).size.height * 0.35,
                  child: Text(
                    widget.topic,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                    maxLines: 2,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 31, 31, 31),
                      borderRadius: BorderRadius.circular(10)),
                  child: Text("13"),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
