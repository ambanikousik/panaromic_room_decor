import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(490.9, 1036.4),
        builder: () {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Panaromic Room Decor',
            theme: ThemeData(
                primarySwatch: Colors.blue,
                scaffoldBackgroundColor: const Color(0xfff9fcff)),
            home: const HomePage(),
          );
        });
  }
}
