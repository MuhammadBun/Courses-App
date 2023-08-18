import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../../provider.dart';

class CustomAppBarWidget extends StatelessWidget {
  final Function()? onTap;
  const CustomAppBarWidget({Key? key, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeChange = Provider.of<DarkThemeProvider>(context);
    return Container(
      margin: const EdgeInsets.only(right: 15),
      child: Row(
        children: [
          InkWell(
            onTap: onTap,
            borderRadius: BorderRadius.circular(10),
            highlightColor: Colors.grey,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(
                "assets/images/menu.svg",
                width: 20,
              ),
            ),
          ),
          SizedBox(
            width: 15,
          ),
          SvgPicture.asset(
            "assets/images/sublogo2.svg",
            fit: BoxFit.cover,
            width: 50,
          ),
          SizedBox(
            width: 5,
          ),
          SvgPicture.asset(
            "assets/images/sublogo.svg",
            fit: BoxFit.cover,
            width: 70,
            color: themeChange.darkTheme ? Colors.white : Colors.black,
          )
        ],
      ),
    );
  }
}
