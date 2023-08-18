import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MidWidget extends StatefulWidget {
  const MidWidget({super.key});

  @override
  State<MidWidget> createState() => _MidWidgetState();
}

class _MidWidgetState extends State<MidWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: Stack(children: [
        Container(
          margin: EdgeInsets.only(left: 20, top: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Educat',
                style: TextStyle(fontSize: 30),
              ),
              Text(
                'Coaching',
                style: TextStyle(fontSize: 30),
              ),
              Row(
                children: [
                  Container(
                    width: 65,
                    height: 25,
                    alignment: Alignment.center,
                    child: Text(
                      'GOLD',
                      style: TextStyle(letterSpacing: 3),
                    ),
                    decoration: BoxDecoration(
                        color: Color(0xFFC1AA6A),
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('MASTERCLASS', style: TextStyle(letterSpacing: 3))
                ],
              )
            ],
          ),
        ),
        Container(
            alignment: Alignment(1.5, -1),
            child: SvgPicture.asset(
              'assets/images/page2.svg',
              width: 220,
            )),
        Positioned(
          top: 250,
          child: Container(
              height: 250,
              padding: EdgeInsets.only(top: 150, left: 40),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(100)),
                  color: Color(0xFF087E8B)),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 70),
                child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eros enim, dictum vitae quam nec, congue feugiat neque. Vivamus ut luctus enim. ',
                    style: TextStyle(fontSize: 15, color: Colors.white),
                    maxLines: 4),
              )),
        ),
        Positioned(
            left: 20,
            top: 140,
            child: Stack(
              children: [
                Container(
                  width: 370,
                  height: 250,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10), // Image border
                    child: SizedBox.fromSize(
                      size: const Size.fromRadius(48), // Image radius
                      child: Image.asset('assets/images/onstack.png',
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                Container(
                  width: 370,
                  height: 250,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Positioned(
                  top: 140,
                  child: Container(
                    margin: EdgeInsets.only(left: 100),
                    width: 200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "by Dieter Rams",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w300),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "How to travel and get paid in 2021 during Covid season",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 210, left: 20),
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                          color: Color.fromARGB(255, 40, 42, 42), width: 8)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(70), // Image border
                    child: SizedBox.fromSize(
                      size: const Size.fromRadius(70), // Image radius
                      child: Image.asset('assets/images/c1.png',
                          fit: BoxFit.cover),
                    ),
                  ),
                )
              ],
            ))
      ]),
    );
  }
}
