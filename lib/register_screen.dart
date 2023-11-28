import 'package:adept_assignment3/verify_otp.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left:20,right:20,),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:70,left: 72,right: 72),
                child: Image.asset('images/Logo (1).png'),
              ),
              SizedBox(height: 99.21,),
              Form(
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Full Name',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextFormField(
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          hintText: 'Jimmy Grammy',
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff0353C2),),
                          )
                        ),
                        onChanged: (String Value){

                        },
                        validator: (value){
                          return value!.isEmpty ? 'Full Name' : null;
                        },
                      ),
                      SizedBox(height: 32,),
                      Text('Email',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 5,),
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            hintText: 'jimmygrammy@gmail.com',
                            border: OutlineInputBorder()
                        ),
                        onChanged: (String Value){

                        },
                        validator: (value){
                          return value!.isEmpty ? 'Email is required' : null;
                        },
                      ),
                      SizedBox(height: 32,),
                      Text('Phone number',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),

                      ),
                      SizedBox(height: 5,),
                      TextFormField(
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                            hintText: 'Phone number ',
                            border: OutlineInputBorder()
                        ),
                        onChanged: (String Value){

                        },
                        validator: (value){
                          return value!.isEmpty ? 'Phone number is required' : null;
                        },
                      ),
                      SizedBox(height: 32,),
                      Text('Password',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 5,),
                      TextFormField(
                        obscureText: _isObscure,
                        decoration: InputDecoration(
                          hintText:'Password',
                          border: OutlineInputBorder(),
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
                      SizedBox(height: 90,),
                      GestureDetector(
                          onTap: (){
                            Navigator.push(context,MaterialPageRoute(builder: (context)=>VerifyOtp()));
                          },
                          child: Container(
                            height: 51,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: const Color(0xff404CCF),
                                borderRadius: BorderRadius.circular(12)
                            ),
                            child: const Center(child: Text('Continue',
                              style: TextStyle(color:Color(0xffffffff),
                                  fontWeight: FontWeight.w400,fontSize: 20),)),
                          )
                      ),
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
