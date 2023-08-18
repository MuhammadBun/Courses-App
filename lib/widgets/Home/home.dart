import 'package:education_app/widgets/Home/custom_app_bar.dart';
import 'package:education_app/widgets/Home/mid_widget.dart';
import 'package:education_app/widgets/Home/my_drawer.dart';
import 'package:education_app/widgets/Home/watch_history.dart';
 
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import '../../provider.dart';
import '../pages/courses/course_list.dart';
import '../pages/courses/related.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ScrollController scrollController = ScrollController();
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  double index = 0;
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: OnDrawerMobile(),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromARGB(255, 18, 18, 18),
        title: CustomAppBarWidget(
          onTap: () {
            scaffoldKey.currentState?.openDrawer();
          },
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 15),
            child: SvgPicture.asset(
              'assets/images/noti.svg',
              width: 20,
              color: Colors.white,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 15),
            child: SvgPicture.asset(
              'assets/images/search.svg',
              width: 20,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        controller: scrollController,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              child: CourseListWidget(),
              height: 350,
            ),
            WatchHistoryWidget(),
            const Related(),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 1,
              margin: EdgeInsets.symmetric(horizontal: 20),
              color: Colors.grey,
            ),
            SizedBox(
              height: 20,
            ),
            MidWidget(),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Text(
                'TRENDING NOW',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 2),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Related(),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Text(
                'BEST SKILL',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 2),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Related(),
            SizedBox(
              height: 80,
            )
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MaterialButton(
            splashColor: Colors.black,
            hoverColor: Colors.white,
            focusColor: Colors.white,
            highlightColor: Colors.white.withOpacity(0.4),
            onPressed: () {
              scrollController.animateTo(0,
                  duration: Duration(milliseconds: 400), curve: Curves.ease);
            },
            color: Colors.grey,
            minWidth: 10,
            height: 40,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Icon(
              Icons.arrow_upward_sharp,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          MaterialButton(
            splashColor: Colors.black,
            hoverColor: Colors.white,
            focusColor: Colors.white,
            highlightColor: Colors.white.withOpacity(0.4),
            onPressed: () {
              if (count == 1) {
                scrollController.animateTo(700,
                    duration: Duration(milliseconds: 600), curve: Curves.ease);
                setState(() {
                  count = count + 1;
                });
              } else if (count == 2) {
                scrollController.animateTo(
                    scrollController.position.maxScrollExtent,
                    duration: Duration(milliseconds: 600),
                    curve: Curves.ease);
                count = count + 1;
              } else {
                index = 1;
                scrollController.animateTo(0,
                    duration: Duration(milliseconds: 600), curve: Curves.ease);
                setState(() {
                  count = 1;
                });
              }
            },
            color: Colors.grey,
            minWidth: 10,
            height: 40,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Icon(
              Icons.arrow_downward_sharp,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
