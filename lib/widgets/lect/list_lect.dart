import 'package:education_app/widgets/lect/lech_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ListLectureScreen extends StatelessWidget {
  const ListLectureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lectures'),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 30),
            child: SvgPicture.asset(
              'assets/images/search.svg',
              width: 20,
            ),
          )
        ],
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return LectureCardWidget(value: 5);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.edit,
          color: Colors.white,
        ),
        backgroundColor: const Color.fromARGB(255, 19, 19, 19),
      ),
    );
  }
}
