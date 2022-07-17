import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/screens/contact.dart';
import 'package:portfolio/screens/menu.dart';
import 'package:portfolio/screens/projects.dart';

import 'screens/about.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      splitScreenMode: true,
      minTextAdapt: true,
      designSize: const Size(375, 812),
      builder: (BuildContext context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/home',
        routes: {
          '/home': (context) => const MyHomePage(),
          '/menu': (context) => const Menu(),
          '/project': (context) => const Projects(),
          '/contact': (context) => const Contact(),
          '/about': (context) => const About(),
        },
      ),
    );
  }
}
