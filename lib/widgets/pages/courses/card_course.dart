import 'package:flutter/material.dart';

class CourseCard extends StatelessWidget {
  const CourseCard({Key? key, required this.imageUrl}) : super(key: key);
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10, left: 20),
      child: Stack(
        children: [
          Container(
            width: 230,
            height: 350,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(20),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20), // Image border
              child: SizedBox.fromSize(
                size: const Size.fromRadius(48), // Image radius
                child: Image.asset(imageUrl, fit: BoxFit.cover),
              ),
            ),
          ),
          Container(
            width: 230,
            height: 350,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.5),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          Positioned(
            top: 230,
            left: 20,
            child: SizedBox(
              width: 220,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Dieter Rams',
                    style: TextStyle(
                        fontWeight: FontWeight.w300, color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'A Simple Guide to Pricing Your Virtual Products',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                        color: Colors.white),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
