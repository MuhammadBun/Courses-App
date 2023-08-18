import 'package:flutter/material.dart';

class FlexWidget extends StatelessWidget {
  const FlexWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return FlexibleSpaceBar(
      expandedTitleScale: 1.5,
      stretchModes: [StretchMode.blurBackground],
      background: Image.network(
        "https://www.fticonsulting.com/-/media/images/shared-content/insights/fti-journal/2023/mar/heres-what-coming-ai-act-means-business.jpg",
        fit: BoxFit.cover,
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: 150,
            child: Text(
              "AI & Deep Learning By Python",
              maxLines: 3,
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
          MaterialButton(
            onPressed: () {},
            child: new RichText(
              text: new TextSpan(
                style: TextStyle(color: Colors.white, fontSize: 12),
                children: <TextSpan>[
                  new TextSpan(
                    text: '\$8.99',
                    style: new TextStyle(
                      color: Colors.red,
                      fontSize: 8,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                  new TextSpan(
                      text: ' \$3.99',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            color: Colors.grey.withOpacity(0.8),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            minWidth: 20,
            height: 20,
          )
        ],
      ),
      titlePadding: EdgeInsets.zero,
    );
  }
}
