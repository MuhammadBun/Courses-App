import 'package:flutter/material.dart';

class LectureCardWidget extends StatefulWidget {
  final double value;
  const LectureCardWidget({super.key, required this.value});

  @override
  State<LectureCardWidget> createState() => _LectureCardWidgetState();
}

class _LectureCardWidgetState extends State<LectureCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 36, 36, 36),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "AI & Deep Learning",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                "Muhammad Hamad",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
              ),
            ],
          ),
          Stack(
            children: [
              SizedBox(
                width: 50,
                height: 50,
                child: CircularProgressIndicator(
                  value: 0.7,
                  backgroundColor: Colors.grey.withOpacity(0.2),
                  color: Colors.green,
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: 50,
                height: 50,
                child: Text(
                  "20/30",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
