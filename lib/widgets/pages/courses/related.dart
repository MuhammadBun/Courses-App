import 'package:education_app/widgets/pages/courses/card_related.dart';
import 'package:flutter/material.dart';

class Related extends StatelessWidget {
  const Related({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: Column(
        children: [
          SizedBox(
            height: 220,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
