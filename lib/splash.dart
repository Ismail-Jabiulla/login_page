import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_login_page/screen/homePageScreen.dart';
import 'package:task_login_page/screen/signIn.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getSpash();
  }

  _getSpash() async {
    await Future.delayed(Duration(milliseconds: 2000), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => LoginScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Image.asset(
            'assets/images/Splash.png',
            fit: BoxFit.cover,
          ),
          Positioned(
            child: Image.asset(
              'assets/images/Frame 1171275716.png',
              height: 220,
              width: 324,
            ),
          )
        ],
      ),
    );
  }
}
