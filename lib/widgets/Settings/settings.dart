import 'package:education_app/widgets/Settings/card_settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lectures'),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 30),
            child: SvgPicture.asset(
              'assets/images/search.svg',
              width: 20,
            ),
          )
        ],
      ),
      body: SettingsCardWidget(),
    );
  }
}
