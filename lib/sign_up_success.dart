import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'screen/Home_screen.dart';

class UserSignUpSuccess extends StatelessWidget {
  const UserSignUpSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        height: 440,
        width: 382,
        decoration: BoxDecoration(
         color: Colors.lightBlue.shade50,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/Congratulations.gif', height: 188,width: 188,),
            const Padding(
              padding: EdgeInsets.only(top: 16.0, right: 16, left: 16),
              child: Text('Congratulations!', style:TextStyle(fontSize: 20, color: Colors.blueAccent),),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 16.0),
              child: Center(child: Text('Your new account has been created \nsuccessfully.')),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeScreenPage()));
                },
                child: Container(
                  height: 56,
                  width: 318,
                  decoration:  BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(16)
                  ),
                  child: Center(
                    child: Text('Continue', style: TextStyle(fontSize: 20, color: Colors.white),),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
