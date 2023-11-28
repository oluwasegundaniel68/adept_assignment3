import 'package:flutter/material.dart';

import 'login_register_screen.dart';
import 'login_screen.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor:const Color(0xff404CCF),
      body:   Padding(
        padding: const EdgeInsets.only(left: 28,right: 26),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                itemCount: contents.length,
                onPageChanged: (int index){
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemBuilder: (BuildContext context, int index) {
                return OnboardContent(image: contents[index].image, title: contents[index].title, );
              },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                  contents.length,
                      (index) =>  Container(
                        height: 10,
                        width:  10,
                        margin: const EdgeInsets.only(right: 5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: currentIndex == index? Color(0xffffffff):Colors.grey
                        ),
                      ),),
            ),
            SizedBox(height: 20,),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const LoginRegisterScreen()));
              },
              child: Container(
                height: 51,
                width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                    borderRadius: BorderRadius.circular(12)
                  ),
                child: const Center(child: Text('Get started',
                style: TextStyle(color:Color(0xff404CCF),
                fontWeight: FontWeight.w400,fontSize: 20),)),
              ),
            ),
            const SizedBox(height: 14,),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const LoginScreen()));
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
            const SizedBox(height: 40,),

          ],
        ),
      ),
    );
  }
}

List<OnboardContent> contents= [
const OnboardContent(image: 'images/Receipts.png', title: 'Say goodbye to paper receipts'),
const OnboardContent(image: 'images/Chart.png', title: 'Monitor your daily spending '),
const OnboardContent(image: 'images/Location.png', title: 'Easily access your receipts anywhere'),
];

class OnboardContent extends StatelessWidget {
  const OnboardContent({
    super.key, required this.image, required this.title,
  });


  final String image;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 140,),
        Image.asset(image),
        const SizedBox(height: 70,),
         Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Text(title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 38,
                  fontWeight: FontWeight.w700,
                  color: Color(0xffffffff),
                ),
              ),
            ),
          ],
        ),

      ],
    );
  }
}
