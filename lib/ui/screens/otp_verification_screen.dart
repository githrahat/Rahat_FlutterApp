import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_project/ui/screens/reset_password_screen.dart';
import 'package:flutter_project/ui/widgets/app_elevated_button.dart';
import 'package:flutter_project/ui/widgets/screen_background_widget.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../utils/text_below_button_styles.dart';
import '../utils/text_styles.dart';
import 'login.dart';

class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({Key? key}) : super(key: key);

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'PIN Verification',
                  style: screenTitleStyle,
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                    'A 6 digits verification code will be sent to your email address',
                    style: screenSubTitleTextStyle
                ),
                const SizedBox(
                  height: 24,
                ),
                PinCodeTextField(
                  length: 6,
                  obscureText: false,
                  animationType: AnimationType.fade,
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(8),
                    fieldHeight: 50,
                    fieldWidth: 40,
                    activeFillColor: Colors.white,
                    inactiveFillColor: Colors.white,
                    selectedFillColor: Colors.white,
                    selectedColor: Colors.green,
                    activeColor: Colors.blueAccent,
                    inactiveColor: Colors.blueAccent
                  ),
                  animationDuration: const Duration(milliseconds: 300),
                  backgroundColor: Colors.transparent,
                  enableActiveFill: true,
                  onCompleted: (v) {
                    print("Completed");
                  },
                  onChanged: (value) {
                    print(value);
                    setState(() {
                    });
                  },
                  beforeTextPaste: (text) {
                    print("Allowing to paste $text");
                    //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                    //but you can show anything you want here, like your pop up saying wrong paste format or etc
                    return true;
                  }, appContext: context,
                ),
                const SizedBox(
                  height: 24,
                ),
                AppElevatedButton(child: const Text('Verify'), onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const ResetPasswordScreen()));
                }),
                const SizedBox(height: 8),
                text_below_below_styles(
                  text1: 'Have account?',
                  text2: 'Sign in',
                  ontap: () {
                    Navigator.pushAndRemoveUntil(
                        context, MaterialPageRoute(builder: (context) => const LoginScreen()), (route) => false);
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
