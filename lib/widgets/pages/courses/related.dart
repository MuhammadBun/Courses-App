import 'package:education_app/widgets/pages/courses/card_related.dart';
import 'package:flutter/material.dart';

class Related extends StatelessWidget {
  const Related({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RelatedCard(
            imageUrl: 'assets/images/related.png',
            type: true,
          ),
          RelatedCard(
            imageUrl: 'assets/images/l4.png',
            type: false,
          ),
          RelatedCard(
            imageUrl: 'assets/images/3.png',
            type: true,
          ),
          RelatedCard(
            imageUrl: 'assets/images/related.png',
            type: false,
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(bottom: 80, left: 20, right: 20),
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.3),
                borderRadius: BorderRadius.circular(50)),
            child: Icon(Icons.arrow_forward_ios_rounded),
          )
        ],
      ),
    );
  }
}
