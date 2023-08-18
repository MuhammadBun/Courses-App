import 'package:flutter/material.dart';

class ViewDetailVideoScreen extends StatefulWidget {
  const ViewDetailVideoScreen({super.key});

  @override
  State<ViewDetailVideoScreen> createState() => _ViewDetailVideoScreenState();
}

class _ViewDetailVideoScreenState extends State<ViewDetailVideoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Hi"),),
    );
  }
}
