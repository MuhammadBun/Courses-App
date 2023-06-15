import 'package:bottom_bar_with_sheet/bottom_bar_with_sheet.dart';
import 'package:education_app/widgets/pages/courses/bottom_navigation.dart';
import 'package:education_app/widgets/pages/courses/my_courses.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

import '../provider.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  ScrollController scrollController = ScrollController();
  BottomBarWithSheetController? _bottomBarController =
      BottomBarWithSheetController(initialIndex: 1);

  double index = 0;
  int count = 0;
  @override
  Widget build(BuildContext context) {
    final themeChange = Provider.of<DarkThemeProvider>(context);

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(130.0),
            child: Container(
              margin: const EdgeInsets.only(top: 20),
              child: AppBar(
                backgroundColor: Colors.transparent,
                title: Container(
                  margin: const EdgeInsets.only(bottom: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(top: 15),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              "assets/images/sublogo2.svg",
                              fit: BoxFit.cover,
                              width: 80,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            SvgPicture.asset(
                              "assets/images/sublogo.svg",
                              fit: BoxFit.cover,
                              width: 120,
                              color: themeChange.darkTheme
                                  ? Colors.white
                                  : Colors.black,
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 15),
                        child: const CircleAvatar(
                          radius: 25, // Image radius
                          backgroundImage: NetworkImage(
                              'https://play-lh.googleusercontent.com/-u-oG-Ni_pco9h7zc3CQl-lFkKJjztO3RGZMjnbaDiznnbXoMQZYUjITHN0BVxYHBg=w240-h480-rw'),
                        ),
                      )
                    ],
                  ),
                ),
                bottom: TabBar(
                    indicator: MaterialIndicator(
                        height: 5,
                        topLeftRadius: 5,
                        topRightRadius: 5,
                        bottomLeftRadius: 5,
                        bottomRightRadius: 5,
                        horizontalPadding: 35,
                        tabPosition: TabPosition.bottom,
                        color: const Color(0xff2EAFBE)),
                    tabs: const [
                      Tab(
                        child: Text(
                          'InProgress',
                          style: TextStyle(fontWeight: FontWeight.w900),
                        ),
                      ),
                      Tab(
                        child: Text('Saved'),
                      ),
                      Tab(
                        child: Text('Coaching'),
                      ),
                      Tab(
                        child: Text('Homework'),
                      )
                    ]),
              ),
            )),
        body: Stack(
          children: [
            TabBarView(children: [
              SingleChildScrollView(
                child: AvilableCourses(),
                controller: scrollController,
              ),
              Center(
                child: Text('0 Courses'),
              ),
              Center(
                child: Text('No Coaching'),
              ),
              Center(
                child: Text('No Homework'),
              ),
            ]),
            Positioned(
              top: MediaQuery.of(context).size.height-250,
              left: 130,
              child: Container(
                alignment: Alignment.center,
                width: 150,
                height: 50,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          blurRadius: 10,
                          blurStyle: BlurStyle.normal,
                          offset: Offset(0, 0),
                          spreadRadius: 1)
                    ],
                    color: !themeChange.darkTheme
                        ? Colors.white
                        : Color.fromARGB(255, 25, 25, 25),
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.settings,
                            color: themeChange.darkTheme
                                ? Colors.white
                                : Color.fromARGB(255, 37, 37, 37))),
                    IconButton(
                        onPressed: () {
                          
                          themeChange.darkTheme = !themeChange.darkTheme;
                        },
                        icon: Icon(Icons.dark_mode,
                            color: themeChange.darkTheme
                                ? Colors.white
                                : Color.fromARGB(255, 37, 37, 37))),
                  ],
                ),
              ),
            )
          ],
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                scrollController.animateTo(0,
                    duration: Duration(milliseconds: 400), curve: Curves.ease);
              },
              child: Container(
                alignment: Alignment.center,
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.grey,
                ),
                child: Icon(
                  Icons.arrow_upward_sharp,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            InkWell(
              onTap: () {
                if (count == 0) {
                  scrollController.animateTo(700,
                      duration: Duration(milliseconds: 600),
                      curve: Curves.ease);
                  count = count + 1;
                } else if (count == 1) {
                  scrollController.animateTo(
                      scrollController.position.maxScrollExtent,
                      duration: Duration(milliseconds: 600),
                      curve: Curves.ease);
                  count = count + 1;
                } else {
                  index = 0;
                  scrollController.animateTo(0,
                      duration: Duration(milliseconds: 600),
                      curve: Curves.ease);
                  count = 0;
                }
              },
              child: Container(
                alignment: Alignment.center,
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.grey,
                ),
                child: Icon(
                  Icons.arrow_downward_sharp,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

/**
 * 
 * 
 * 
 * Center(
        child: Container(
          child: Column(
            children: [
              IconButton(
                  onPressed: () {
                    themeChange.darkTheme = !themeChange.darkTheme;
                  },
                  icon: Icon(Icons.dark_mode)),
              Text('this ${themeChange.darkTheme ? "dark" : 'light'}')
            ],
          ),
        ),
      )
 */
