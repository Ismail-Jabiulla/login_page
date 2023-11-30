import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task_login_page/popUP_dialogBox/signUpSuccess.dart';
import 'package:task_login_page/screen/HomeScreen.dart';
import 'package:task_login_page/screen/homePageScreen.dart';
import 'package:task_login_page/screen/signIn.dart';
import 'package:task_login_page/screen/signUp.dart';
import 'package:task_login_page/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle( SystemUiOverlayStyle(
        statusBarColor: Colors.lightBlue.shade50,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.black));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        appBarTheme: AppBarTheme(color: Colors.lightBlue.shade50,elevation: 0),
      ),
      home: SplashScreen(),
    );
  }
}