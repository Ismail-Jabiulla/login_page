import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_login_page/screen/signIn.dart';

import '../popUP_dialogBox/signUpSuccess.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    height: 24,
                    width: 382,
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins'),
                    ),
                  ),
                ),

                //Welcome Back
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 40.0),
                    child: Column(
                      children: [
                        Image.asset('assets/images/Vectorscreen_person.png'),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            'Welcome Back!',
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Popins'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text('Please login to continue',
                              style: TextStyle(
                                  fontSize: 16, fontFamily: 'Popins')),
                        ),
                      ],
                    ),
                  ),
                ),

                //form area
                Form(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 16.0, left: 16.0, right: 16.0),
                        child: TextFormField(
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                            labelText: 'Your Full Name',
                            hintText: 'Mahmud Saimon',
                            prefixIcon: Icon(Icons.person),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 16.0, left: 16.0, right: 16.0),
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            labelText: 'Email',
                            hintText: 'example@domain.com',
                            prefixIcon: Icon(Icons.email_outlined),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 16.0, left: 16.0, right: 16.0),
                        child: TextFormField(
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            hintText: 'Password',
                            prefixIcon: Icon(Icons.lock_outline),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 16.0, left: 16.0, right: 16.0),
                        child: TextFormField(
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                            labelText: 'Confirm Password',
                            hintText: 'Confirm Password',
                            prefixIcon: Icon(Icons.lock_outline),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12)),
                          ),
                        ),
                      )
                    ],
                  ),
                ),

                //Sign Up Button
                Padding(
                  padding:
                      const EdgeInsets.only(top: 32.0, right: 16.0, left: 16.0),
                  child: Container(
                    alignment: AlignmentDirectional.center,
                    height: 56,
                    width: 382,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.grey.shade300,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>UserSignUpSuccess()));
                      },
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey.shade500),
                      ),
                    ),
                  ),
                ),

                //Divider Widgets
                Padding(
                  padding:
                      const EdgeInsets.only(top: 32.0, right: 16.0, left: 16.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: Colors.grey.shade500,
                          thickness: 2,
                          indent: 8,
                          endIndent: 8,
                        ),
                      ),
                      Text(
                        'OR CONTINUE WITH',
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                      Expanded(
                        child: Divider(
                          color: Colors.grey.shade500,
                          thickness: 2,
                          indent: 8,
                          endIndent: 8,
                        ),
                      ),
                    ],
                  ),
                ),

                //Google and Facebook
                Padding(
                  padding:
                      const EdgeInsets.only(top: 32.0, right: 16.0, left: 16.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 56,
                        width: 170,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade300),
                            borderRadius: BorderRadius.circular(12)),
                        child: GestureDetector(
                          onTap: (){
                            print('Google');
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/images/Group 1363.png'),
                              SizedBox(
                                width: 10,
                              ),
                              Text('Google'),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 56,
                        width: 170,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade300),
                            borderRadius: BorderRadius.circular(12)),
                        child: GestureDetector(
                          onTap: () {
                            print('Facebook');
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/images/Group.png'),
                              SizedBox(
                                width: 10,
                              ),
                              Text('Facebook'),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                //already have account
                Padding(
                  padding: const EdgeInsets.only(top: 16, bottom: 32),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Already have an account?',
                            style: TextStyle(
                              fontSize: 16,
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
                          },
                          child: Text(
                            'Sign In',
                            style: TextStyle(
                              fontSize: 16, color: Colors.blueAccent
                            ),
                          ),
                        )
                      ],
                    ),
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
