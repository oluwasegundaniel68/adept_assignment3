import 'package:adept_assignment3/login_screen.dart';
import 'package:adept_assignment3/register_screen.dart';
import 'package:flutter/material.dart';

class LoginRegisterScreen extends StatelessWidget {
  const LoginRegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff404CCF),
      body: Padding(
        padding: const EdgeInsets.only(right: 27,left: 27),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('images/Logo.png'),
              const Text('No more paper receipt!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xffffffff),
                ),
              ),
              const SizedBox(height: 104,),
              GestureDetector(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>LoginScreen()));
                },
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>LoginScreen()));
                  },
                  child: Container(
                    height: 51,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: const Center(child: Text('Login',
                      style: TextStyle(color:Color(0xffffffff),
                          fontWeight: FontWeight.w400,fontSize: 20),)),
                  ),
                ),
              ),
              const SizedBox(height: 24,),

              GestureDetector(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>RegisterScreen()));
                },
                child: Container(
                  height: 51,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: const Color(0xffffffff),
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: const Center(child: Text('Registers',
                    style: TextStyle(color:Color(0xff404CCF),
                        fontWeight: FontWeight.w400,fontSize: 20),)),
                ),
              ),
              const SizedBox(height: 14,),

            ],
          ),
        ),
      ),
    );
  }}
