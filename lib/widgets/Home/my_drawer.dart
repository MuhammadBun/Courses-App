import 'package:education_app/widgets/Home/custom_app_bar.dart';
import 'package:education_app/widgets/Settings/settings.dart';
import 'package:education_app/widgets/lect/list_lect.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../../provider.dart';
import '../navigation_animation.dart';

class OnDrawerMobile extends StatelessWidget {
  const OnDrawerMobile({
    super.key,
  });

  Widget cardChoise(String text, VoidCallback? onTap, Widget icon) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      child: MaterialButton(
        highlightColor: Colors.grey,
        color: Color.fromARGB(255, 28, 28, 28),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        padding: EdgeInsets.all(10),
        onPressed: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              text,
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            icon
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final themeChange = Provider.of<DarkThemeProvider>(context);
    return Drawer(
      backgroundColor: Color.fromARGB(255, 11, 11, 11),
      child: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              height: 30,
            ),
            InkWell(
              borderRadius: BorderRadius.circular(20),
              highlightColor: Colors.grey,
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.dark_mode,
                  color: themeChange.darkTheme ? Colors.white : Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                        'https://media.sproutsocial.com/uploads/2022/06/profile-picture.jpeg'),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Muhammad Hamad',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 80,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                      width: 5, color: const Color.fromARGB(255, 36, 36, 36))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "10",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Courses",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "5",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Completed",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "5",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Wish List",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            cardChoise("Home", () {
              Navigator.of(context).pop();
            },
                Icon(
                  Icons.home,
                  color: themeChange.darkTheme ? Colors.white : Colors.black,
                )),
            cardChoise("My Lecture", () {
              Navigator.of(context).pop();
              AnimateNavigation.goTo(context, ListLectureScreen());
            },
                Icon(
                  Icons.video_collection_rounded,
                  color: themeChange.darkTheme ? Colors.white : Colors.black,
                )),
            cardChoise("Settings", () {
              Navigator.of(context).pop();
              AnimateNavigation.goTo(context, SettingsScreen());
            },
                Icon(
                  Icons.settings,
                  color: themeChange.darkTheme ? Colors.white : Colors.black,
                )),
            cardChoise(
                "Notes",
                () {},
                Icon(
                  Icons.edit,
                  color: themeChange.darkTheme ? Colors.white : Colors.black,
                )),
            cardChoise(
                "Saved",
                () {},
                Icon(
                  Icons.star,
                  color: themeChange.darkTheme ? Colors.white : Colors.black,
                )),
            cardChoise(
                "In Progress",
                () {},
                Icon(
                  Icons.circle_outlined,
                  color: themeChange.darkTheme ? Colors.white : Colors.black,
                )),
            cardChoise(
                "Sign out",
                () {},
                Icon(
                  Icons.delete_sweep_sharp,
                  color: themeChange.darkTheme ? Colors.white : Colors.black,
                )),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
            )
          ],
        ),
      ),
    );
  }
}

