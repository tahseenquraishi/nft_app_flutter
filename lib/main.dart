import 'package:flutter/material.dart';
import 'package:nft_app_ui/colors/colors.dart';
import 'package:nft_app_ui/screens/home.dart';
import 'package:nft_app_ui/screens/intro.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          fontFamily: 'Poppins',
          scaffoldBackgroundColor: dark,
          textTheme: const TextTheme(
            headline1: TextStyle(
              fontSize: 30,
              color: white,
              fontWeight: FontWeight.w600,
            ),
            headline2: TextStyle(
                fontSize: 20,
                color: primaryColorLight,
                fontWeight: FontWeight.w600),
            headline3: TextStyle(
                fontSize: 24,
                color: primaryColorLight,
                height: 1,
                fontWeight: FontWeight.w500),
            headline4: TextStyle(
                fontSize: 22,
                color: primaryColorLight,
                fontWeight: FontWeight.w400),
            bodyText1: TextStyle(
                fontSize: 16,
                color: primaryColorLight,
                fontWeight: FontWeight.w400),
            bodyText2: TextStyle(
                fontSize: 14, color: white, fontWeight: FontWeight.w600),
            caption: TextStyle(
                fontSize: 14,
                color: primaryColorLight,
                fontWeight: FontWeight.w300),
          ),
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            backgroundColor: Colors.transparent,
            elevation: 20,
            type: BottomNavigationBarType.shifting,
          ),
        ),
        home: Intro());
  }
}
