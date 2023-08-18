import 'package:flutter/material.dart';

class TopicDetailWidget extends StatefulWidget {
  const TopicDetailWidget({super.key});

  @override
  State<TopicDetailWidget> createState() => _TopicDetailWidgetState();
}

class _TopicDetailWidgetState extends State<TopicDetailWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.all(10),
          child: MaterialButton(
            onPressed: () {},
            highlightColor: Colors.grey,
            color: const Color.fromARGB(255, 37, 37, 37),
            padding: EdgeInsets.all(15),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Text(
                    "Giving an example Giving an example Giving an example Giving an example",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Container(
                  child: Icon(Icons.keyboard_arrow_right_rounded),
                )
              ],
            ),
          ),
        );
      },
    ));
  }
}
