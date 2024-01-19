import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../bottom_navigation_bar.dart';

class HomeScreenPage extends StatelessWidget {
  const HomeScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightBlue.shade50,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.lightBlue.shade50,
          floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
          floatingActionButton: FloatingActionButton(onPressed: (){},
            backgroundColor: Colors.blueAccent,
          child: Image.asset('assets/images/magicoon.png'),
          ),

          bottomNavigationBar:BottomNavigation(),

          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //User header
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset('assets/images/Avater.png'),
                          const Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: Text(
                              'Hello, Adventurer!',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      Image.asset('assets/images/Notifications.png')
                    ],
                  ),
                ),

                //Hello
                Container(
                  padding: EdgeInsets.only(top: 250),
                  alignment: AlignmentDirectional.center,
                  child: Text(
                    'Hello',
                    style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color: Colors.lightBlue.shade500),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
