import 'package:flutter/material.dart';

class CourseInfoWidget extends StatelessWidget {
  const CourseInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10, bottom: 0, right: 10, left: 10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Color.fromARGB(103, 50, 50, 50),
          borderRadius: BorderRadius.circular(15)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Row(
                children: [
                  Icon(Icons.alarm_on_sharp),
                  SizedBox(
                    width: 10,
                  ),
                  Text("1h 13m")
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(Icons.star),
                  SizedBox(
                    width: 10,
                  ),
                  Text("5.0/5.0")
                ],
              )
            ],
          ),
          Column(
            children: [
              MaterialButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Text('Reviews'),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.room_service_rounded,
                      color: Colors.amber,
                    )
                  ],
                ),
                color: Color.fromARGB(255, 42, 41, 41),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                highlightColor: Colors.grey,
              ),
              Row(
                children: [
                  Text('Beginner level'),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.help_outlined,
                    color: Colors.grey,
                    size: 15,
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
