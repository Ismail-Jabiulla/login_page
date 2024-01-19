import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 80,
          child: Padding(
            padding: const EdgeInsets.only(right: 32.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                //Home Button
                Container(
                  height: 40,
                  width: 95,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.blueAccent,
                  ),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.home,color: Colors.white,
                        ),
                      ),
                      Text('Home', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
                    ],
                  ),
                ),

                IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back,)),
                IconButton(onPressed: () {}, icon: Icon(Icons.person))
              ],
            ),
          ),
        ),
      );
  }
}
