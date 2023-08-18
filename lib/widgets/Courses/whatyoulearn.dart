import 'package:flutter/material.dart';

class WhatYouWillLearnWidget extends StatelessWidget {
  const WhatYouWillLearnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 50,
            height: 1,
            decoration: BoxDecoration(color: Colors.grey),
          ),
          SizedBox(
            width: 10,
          ),
          Text('What you\'ll learn',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold)),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.lightbulb,
            color: Colors.amber,
          ),
          Container(
            width: 50,
            height: 1,
            decoration: BoxDecoration(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
