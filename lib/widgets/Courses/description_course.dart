import 'package:flutter/material.dart';

class DescriptionWidget extends StatelessWidget {
  const DescriptionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5, bottom: 0, right: 10, left: 10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Color.fromARGB(103, 50, 50, 50),
          borderRadius: BorderRadius.circular(15)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Description",
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text(
              "Our team is made up of passionate and dedicated professionals with a wealth of experience in robotics, artificial intelligence, and user experience design. We are committed to pushing the boundaries of what is possible and delivering innovative solutions that meet the needs of our customers.",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.justify,
            ),
          )
        ],
      ),
    );
  }
}
