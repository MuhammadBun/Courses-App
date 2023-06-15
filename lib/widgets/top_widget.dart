import 'package:flutter/material.dart';
 
import 'package:flutter_svg/flutter_svg.dart';

class TopStatusBar extends StatelessWidget {
  const TopStatusBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SvgPicture.asset('assets/images/logo.svg'),
        const CircleAvatar(
          radius: 35, // Image radius
          backgroundImage:   NetworkImage(
              'https://play-lh.googleusercontent.com/-u-oG-Ni_pco9h7zc3CQl-lFkKJjztO3RGZMjnbaDiznnbXoMQZYUjITHN0BVxYHBg=w240-h480-rw'),
        )
      ],
    );
  }
}
