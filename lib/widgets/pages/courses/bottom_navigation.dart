import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomButtom extends StatefulWidget {
  const CustomButtom({Key? key}) : super(key: key);

  @override
  State<CustomButtom> createState() => _CustomButtomState();
}

class _CustomButtomState extends State<CustomButtom> {
  bool isPressed1 = true;
  bool isPressed2 = true;
  bool isPressed3 = true;
  bool isPressed4 = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 100,
      decoration: const BoxDecoration(
          color: Color(0xFFFFFFFF),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          boxShadow: [
            BoxShadow(
                color: Colors.black,
                blurStyle: BlurStyle.normal,
                blurRadius: 10,
                offset: Offset(1, 10))
          ]),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Center(
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            AnimatedContainer(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  color: isPressed1 ? Colors.transparent : Colors.blue[100],
                  borderRadius: BorderRadius.circular(30)),
              duration: const Duration(milliseconds: 300),
              child: InkWell(
                child: Icon(FontAwesomeIcons.house,
                    color: isPressed1 ? Colors.grey : Colors.blue),
                onTap: () {
                  setState(() {
                    isPressed1 = !isPressed1;
                    isPressed2 = true;
                    isPressed3 = true;
                    isPressed4 = true;
                  });
                },
              ),
            ),
            AnimatedContainer(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  color: isPressed2 ? Colors.transparent : Colors.orange[100],
                  borderRadius: BorderRadius.circular(30)),
              duration: const Duration(milliseconds: 300),
              child: InkWell(
                child: Icon(FontAwesomeIcons.bolt,
                    color: isPressed2 ? Colors.grey : Colors.orange),
                onTap: () {
                  setState(() {
                    isPressed2 = !isPressed2;
                    isPressed3 = true;
                    isPressed1 = true;
                    isPressed4 = true;
                  });
                },
              ),
            ),
            AnimatedContainer(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  color: isPressed3 ? Colors.transparent : Colors.red[100],
                  borderRadius: BorderRadius.circular(30)),
              duration: const Duration(milliseconds: 300),
              child: InkWell(
                child: Icon(FontAwesomeIcons.user,
                    color: isPressed3 ? Colors.grey : Colors.red),
                onTap: () {
                  setState(() {
                    isPressed3 = !isPressed3;
                    isPressed2 = true;
                    isPressed1 = true;
                    isPressed4 = true;
                  });
                },
              ),
            ),
            AnimatedContainer(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  color: isPressed4 ? Colors.transparent : Colors.green[100],
                  borderRadius: BorderRadius.circular(30)),
              duration: const Duration(milliseconds: 300),
              child: InkWell(
                child: Icon(FontAwesomeIcons.gear,
                    color: isPressed4 ? Colors.grey : Colors.green),
                onTap: () {
                  setState(() {
                    isPressed3 = true;
                    isPressed2 = true;
                    isPressed1 = true;
                    isPressed4 = !isPressed4;
                  });
                },
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
