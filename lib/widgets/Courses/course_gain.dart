import 'package:flutter/material.dart';

class CourseGainWidget extends StatelessWidget {
  const CourseGainWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 5, bottom: 5, right: 10, left: 10),
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: Color.fromARGB(103, 50, 50, 50),
            borderRadius: BorderRadius.circular(15)),
        child: Text(
          "Gain an immersive understanding of the practices and skills needed to succeed in an entry-level project management role.",
          maxLines: 3,
          textAlign: TextAlign.justify,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w300,
          ),
        ));
  }
}
