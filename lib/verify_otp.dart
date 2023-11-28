import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerifyOtp extends StatefulWidget {
  const VerifyOtp({Key? key}) : super(key: key);

  @override
  State<VerifyOtp> createState() => _VerifyOtpState();
}

class _VerifyOtpState extends State<VerifyOtp> {
  final _emailOtpController = TextEditingController();
  final GlobalKey<FormState> _emailOtpPinKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Padding(
        padding: const EdgeInsets.only(top:60,left:27,right:27,),
        child: Column(
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: const Icon(Icons.arrow_back,
                  color: Color(0xff404CCF),
                  ),
                ),
                const SizedBox(width:10,),
                const Text('OTP Verification',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff404CCF),
                  ),
                )
              ],
            ),
            const SizedBox(height: 28,),
            const Padding(
              padding: EdgeInsets.only(left:27,right:140,),
              child: Column(
                children: [
                  Text('Please Enter\nOTP Verification',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff323232)
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10,),
            const Padding(
              padding: EdgeInsets.only(left:27,right:107,),
              child: Text('Code was sent to +234 7085 689***',
                style: TextStyle(
                  fontSize:14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff323232),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left:27,right:107,),
              child: Row(
                children: [
                  Text('This code will expire in ',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text('03:48',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight:FontWeight.w400,
                      color: Color(0xffEB5757)
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50,),
            Form(
              key: _emailOtpPinKey,
              child: Padding(
                padding:  const EdgeInsets.symmetric(
                  horizontal: (10),
                ),
                child: PinCodeTextField(
                  autovalidateMode: AutovalidateMode.disabled,
                  controller: _emailOtpController,
                  keyboardType: TextInputType.number,
                  appContext: context,
                  length: 4,
                  textStyle: const TextStyle(
                      color: Color(0xff000000),
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                  ),
                  animationType: AnimationType.fade,
                  pinTheme: PinTheme(
                    activeColor: Theme.of(context).brightness== Brightness.dark
                        ? Colors.white:
                    Colors.black,
                    inactiveColor:Theme.of(context).brightness== Brightness.dark
                        ? Colors.white:
                    Colors.black,
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(8),
                    fieldHeight: 52,
                    fieldWidth: 52,
                    activeFillColor: Colors.red,
                  ),
                  animationDuration: const Duration(milliseconds: 300),
                  validator: (v) {
                    if (v!.length < 5) {
                      return "Enter the 4 digit PIN sent to your mail";
                    } else {
                      return null;
                    }
                  },
                  onCompleted: (v) {
                  },
                  onChanged: (value) {
                    setState(() {
                    });
                  },
                  beforeTextPaste: (text) {

                    return true;
                  },
                ),
              ),
            ),
            SizedBox(height: 33,),
            const Row(
              children: [
                Text('Didn’t receive an OTP? ',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff323232)
                  ),
                ),
                SizedBox(width: 130,),
                Icon(Icons.restart_alt,color: Color(0xff404CCF),),
                Text('Resend',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff404CCF)
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
