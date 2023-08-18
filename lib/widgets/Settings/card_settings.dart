import 'package:flutter/material.dart';

class SettingsCardWidget extends StatefulWidget {
  const SettingsCardWidget({super.key});

  @override
  State<SettingsCardWidget> createState() => _SettingsCardWidgetState();
}

bool isAuto = false;

class _SettingsCardWidgetState extends State<SettingsCardWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 33, 33, 33),
                borderRadius: BorderRadius.circular(10)),
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: ListTile(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              onTap: () {},
              title: Text(
                "Languages",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
              trailing: Icon(
                Icons.translate,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 33, 33, 33),
                borderRadius: BorderRadius.circular(10)),
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: ListTile(
              title: Text(
                "Currency",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
              trailing: Icon(
                Icons.monetization_on_rounded,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 33, 33, 33),
                borderRadius: BorderRadius.circular(10)),
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: ListTile(
              title: Text(
                "Autoplay Videos",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
              trailing: Icon(
                Icons.play_arrow_outlined,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 33, 33, 33),
                borderRadius: BorderRadius.circular(10)),
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: ListTile(
              title: Text(
                "Languages",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
              trailing: Icon(
                Icons.translate,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 33, 33, 33),
                borderRadius: BorderRadius.circular(10)),
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: ListTile(
              title: Text(
                "Time Of Watch",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
              trailing: Icon(
                Icons.alarm,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 33, 33, 33),
                borderRadius: BorderRadius.circular(10)),
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: ListTile(
              title: Text(
                "Payment Options",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
              trailing: Icon(
                Icons.paypal_outlined,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 33, 33, 33),
                borderRadius: BorderRadius.circular(10)),
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: ListTile(
              title: Text(
                "Help Center",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
              trailing: Icon(
                Icons.help,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 33, 33, 33),
                borderRadius: BorderRadius.circular(10)),
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: ListTile(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              title: Text(
                "Feedback",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
              trailing: Icon(
                Icons.add_reaction_rounded,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
