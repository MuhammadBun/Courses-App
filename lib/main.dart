import 'package:education_app/provider.dart';
import 'package:education_app/widgets/Courses/start_page.dart';
import 'package:education_app/widgets/Courses/topic_detail.dart';
import 'package:education_app/widgets/Courses/view_course.dart';
import 'package:education_app/widgets/Courses/view_detail_video.dart';
import 'package:education_app/widgets/Home/home.dart';

import 'package:education_app/widgets/lect/lech_card.dart';
import 'package:education_app/widgets/lect/list_lect.dart';
import 'package:education_app/widgets/main_widget.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'const/theme_data.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      systemNavigationBarColor: Color.fromARGB(255, 31, 31, 31),
      statusBarColor: Colors.transparent));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  DarkThemeProvider themeChangeProvider = DarkThemeProvider();

  void getCurrentAppTheme() async {
    themeChangeProvider.darkTheme =
        await themeChangeProvider.darkThemePreferences.getTheme();
  }

  @override
  void initState() {
    getCurrentAppTheme();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) {
            return themeChangeProvider;
          })
        ],
        child:
            Consumer<DarkThemeProvider>(builder: (context, themeData, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: Styles.themeData(themeChangeProvider.darkTheme, context),
            home: const ViewDetailVideoScreen(),
          );
        }));
  }
}
