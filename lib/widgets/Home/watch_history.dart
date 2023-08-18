import 'package:flutter/material.dart';

class WatchHistoryWidget extends StatefulWidget {
  const WatchHistoryWidget({super.key});

  @override
  State<WatchHistoryWidget> createState() => _WatchHistoryWidgetState();
}

class _WatchHistoryWidgetState extends State<WatchHistoryWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 18, 18, 18),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'WATCH HISTORY',
            style: TextStyle(fontWeight: FontWeight.w300, fontSize: 15),
          ),
          Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            child: const Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colors.white,
              size: 10,
            ),
          )
        ],
      ),
    );
  }
}
