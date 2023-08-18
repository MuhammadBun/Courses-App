import 'package:flutter/material.dart';

class GetStartWidget extends StatelessWidget {
  const GetStartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: MaterialButton(
        onPressed: () {},
        highlightColor: Colors.grey,
        color: Colors.blue,
        minWidth: 300,
        height: 50,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text("Let's Get Started",
            style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.bold)),
      ),
    );
  }
}
