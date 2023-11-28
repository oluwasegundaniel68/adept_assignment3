
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left:27,right:27,),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:140,left:72,right:72.92,),
                child: Image.asset('images/Logo (1).png'),
              ),
              SizedBox(height: 85.72,),
              Form(
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Email Address',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff323232),
                        ),
                      ),
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          hintText: 'jimmygrammy@gmail.com',
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff0353C2))
                          ),
                        ),
                        onChanged: (String Value){

                        },
                        validator: (value){
                          return value!.isEmpty ? 'Email is needed' : null;
                        },
                      ),
                      SizedBox(height: 32,),
                      Text('Password',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff323232),
                        ),
                      ),
                      SizedBox(height: 5,),
                      TextFormField(
                        obscureText: _isObscure,
                        decoration: InputDecoration(
                            hintText:'Password',
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xff0353C2))
                            ),
                            suffixIcon: GestureDetector(
                              onTap: (){
                                setState(() {
                                  _isObscure = !_isObscure;
                                });
                              },
                              child: Icon(
                                _isObscure ? Icons.visibility : Icons.visibility_off,
                              ),
                            )
                        ),
                      ),
                      SizedBox(height: 50,),
                      Padding(
                        padding: const EdgeInsets.only(left:27,right:27),
                        child: GestureDetector(
                            onTap: (){},
                            child: Container(
                              height: 51,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: const Color(0xff404CCF),
                                  borderRadius: BorderRadius.circular(12)
                              ),
                              child: const Center(child: Text('Login',
                                style: TextStyle(color:Color(0xffffffff),
                                    fontWeight: FontWeight.w400,fontSize: 20),)),
                            )
                        ),
                      ),
                      SizedBox(height:40.09,),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                                Padding(
                                  padding: const EdgeInsets.only(left:100,right:100,),
                                  child: Text('Forgot Password?',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff323232)
                                  ),
                        ),
                                ),
                           ],
                         ),
                      SizedBox(height:20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('New User?',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text('Create Account',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff404CCF),
                            ),
                          ),
                        ],
                      )
                    ],
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}
