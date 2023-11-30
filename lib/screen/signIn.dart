import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_login_page/screen/signUp.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Column(
              children: [
                //Text SignIn
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    height: 24,
                    width: 382,
                    child: Text(
                      'Sign In',
                      style: TextStyle(fontSize: 20, fontFamily: 'poppins', fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        child: Image.asset(
                          'assets/images/Vectorscreen_person.png',
                          height: 104,
                          width: 112,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          'Welcome Back!',
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'poppins'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          'Please login to continue',
                          style: TextStyle(fontSize: 16, fontFamily: 'poppins'),
                        ),
                      ),
                    ],
                  ),
                ),
                Form(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
                    child: Column(
                      children: [
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            labelText: 'Email',
                            hintText: 'exapmple@domain.com',
                            prefixIcon: Icon(Icons.email),
                            border: OutlineInputBorder(),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 16.0),
                          child: TextFormField(
                            keyboardType: TextInputType.visiblePassword,
                            decoration: InputDecoration(
                                labelText: 'Password',
                                hintText: 'Enter Your Password',
                                prefixIcon: Icon(Icons.lock_outline),
                                border: OutlineInputBorder()),
                          ),
                        ),

                        //Forget Password
                        Container(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            style: TextButton.styleFrom(
                                textStyle: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold)),
                            onPressed: () {},
                            child: Text('Forget Password?', style: TextStyle(fontSize: 16,color: Colors.blueAccent)),
                          ),
                        ),
                        Container(
                          height: 56,
                          width: 382,
                          child: TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.grey.shade300,
                            ),
                            onPressed: () {},
                            child: Text('Sign In', style: TextStyle(fontSize:16 ,color: Colors.grey.shade500)),
                          ),
                        ),

                        //Divider widgets
                        Padding(
                          padding: const EdgeInsets.only(top: 16.0, bottom: 16),
                          child: Container(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Divider(
                                    color: Colors.grey,
                                    thickness: 2,
                                    indent: 8,
                                    endIndent: 8,
                                  ),
                                ),
                                Text('OR CONTINUE WITH'),
                                Expanded(
                                  child: Divider(
                                    color: Colors.grey,
                                    thickness: 2,
                                    indent: 6,
                                    endIndent: 6,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 16.0,),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 56,
                                width: 160,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(12),
                                ),
                                child: GestureDetector(
                                  onTap: () {},
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Image.asset('assets/images/Group 1363.png'),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text('Google',style: TextStyle(color: Colors.black, fontSize: 16),)
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: 56,
                                width: 160,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(12),
                                ),
                                child: GestureDetector(
                                  onTap: () {},
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Image.asset('assets/images/Group.png'),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text('Facebook',style: TextStyle(color: Colors.black, fontSize: 16),)
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 16.0),
                          child: Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                            children:[
                              Text('Don’t have any account?'),
                              TextButton(onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUpPage()));
                              }, child: Text('Registration Now', style: TextStyle(fontSize: 16,color: Colors.blueAccent),),
                              )
                            ],
                          ),
                        ),
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
