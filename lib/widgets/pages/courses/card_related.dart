import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

class RelatedCard extends StatelessWidget {
  const RelatedCard({Key? key, required this.imageUrl, required this.type})
      : super(key: key);
  final String imageUrl;
  final bool type;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Column(
              children: [
                Container(
                  width: 180,
                  height: 120,
                  margin: const EdgeInsets.only(left: 20),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10), // Image border
                    child: SizedBox.fromSize(
                      size: const Size.fromRadius(48), // Image radius
                      child: Image.asset(imageUrl, fit: BoxFit.cover),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: 200,
                  padding: const EdgeInsets.only(left: 20),
                  child: const Text(
                    'Dieter Rams',
                    style: TextStyle(fontWeight: FontWeight.w300),
                  ),
                ),
                const SizedBox(
                  height: 1,
                ),
                Container(
                  width: 200,
                  padding: const EdgeInsets.only(left: 20),
                  child: const Text(
                    'Illustrator 2021 MasterClass',
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 15),
                  ),
                )
              ],
            ),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(left: 25, top: 5),
              width: 100,
              height: 20,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(5)),
              child: Text(
                type ? 'BEGINNER' : 'ADVANCED',
                style: TextStyle(
                    color: type ? Color(0xFF087E8B) : Color(0xFFFE5A5E),
                    fontWeight: FontWeight.w900),
              ),
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.only(top: 10, right: 70),
          child: Row(
            children: [
              SvgPicture.asset(
                'assets/images/star.svg',
                width: 15,
              ),
              const SizedBox(
                width: 5,
              ),
              SvgPicture.asset(
                'assets/images/star.svg',
                width: 15,
              ),
              const SizedBox(
                width: 5,
              ),
              SvgPicture.asset(
                'assets/images/star.svg',
                width: 15,
              ),
              const SizedBox(
                width: 5,
              ),
              SvgPicture.asset(
                'assets/images/star.svg',
                width: 15,
                color: Colors.grey,
              ),
              const SizedBox(
                width: 5,
              ),
              SvgPicture.asset(
                'assets/images/star.svg',
                width: 15,
                color: Colors.grey,
              ),
            ],
          ),
        )
      ],
    );
  }
}
