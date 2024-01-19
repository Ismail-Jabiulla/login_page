import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_login_page/screen/sign_up.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _globalKey = GlobalKey();
  bool _isButtonEnable = false;

  void checkButton(){
    _isButtonEnable = _emailController.text.isNotEmpty && _passwordController.text.isNotEmpty;
    setState(() {

    });
  }

  @override
  void initState() {
    super.initState();
    checkButton();
  }

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
                    child: const Text(
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
                      const Padding(
                        padding: EdgeInsets.only(top: 8.0),
                        child: Text(
                          'Welcome Back!',
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'poppins'),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 8.0),
                        child: Text(
                          'Please login to continue',
                          style: TextStyle(fontSize: 16, fontFamily: 'poppins'),
                        ),
                      ),
                    ],
                  ),
                ),
                Form(
                  key: _globalKey,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
                    child: Column(
                      children: [
                        TextFormField(
                          controller: _emailController,
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            labelText: 'Email',
                            hintText: 'exapmple@domain.com',
                            prefixIcon: Icon(Icons.email),
                            border: OutlineInputBorder(),
                          ),
                          validator: (String? value){
                            if (value== null || value.isEmpty){
                              return 'Enter you Email Address';
                            }else{
                              return null;
                            }
                          },
                          onChanged: (value){
                            checkButton();
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 16.0),
                          child: TextFormField(
                            controller: _passwordController,
                            keyboardType: TextInputType.visiblePassword,
                            decoration: const InputDecoration(
                                labelText: 'Password',
                                hintText: 'Enter Your Password',
                                prefixIcon: Icon(Icons.lock_outline),
                                border: OutlineInputBorder()),
                            validator: (String? value){
                              if(value == null || value.isEmpty){
                                return 'Enter Your Password';
                              }else{
                                return null;
                              }
                            },
                            onChanged: (value){
                              checkButton();
                            },
                          ),
                        ),

                        //Forget Password
                        GestureDetector(
                          onTap: (){},
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Container(
                              alignment: Alignment.centerRight,
                                child: Text('Forget Password?', style: TextStyle(fontSize: 16,color: Colors.blueAccent)),
                            ),
                          ),
                        ),
                        Container(
                          height: 56,
                          width: 382,
                          child: TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor: _isButtonEnable ? Colors.black87 : Colors.grey.shade300,
                            ),
                            onPressed: () {
                              if(_globalKey.currentState!.validate()){
                                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text(
                                    'Log In Successfully'),));
                              }else{
                                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text(
                                    'Check your Email or Password'),));
                              }
                            },
                            child: Text('Sign In', style: TextStyle(fontSize:16 ,color: _isButtonEnable ? Colors.white : Colors.grey.shade500)),
                          ),
                        ),

                        //Divider widgets
                        const Padding(
                          padding: EdgeInsets.only(top: 16.0, bottom: 16),
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
                        Padding(
                          padding: const EdgeInsets.only(top: 16.0, left: 16, right: 16),
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
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Image.asset('assets/images/Group 1363.png'),
                                      const SizedBox(
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
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Image.asset('assets/images/Group.png'),
                                      const SizedBox(
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
                              const Text('Don’t have any account?'),
                              TextButton(onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUpPage()));
                              }, child: const Text('Registration Now', style: TextStyle(fontSize: 16,color: Colors.blueAccent),),
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

