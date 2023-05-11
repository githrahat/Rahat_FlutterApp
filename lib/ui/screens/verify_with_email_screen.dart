import 'package:flutter/material.dart';
import 'package:flutter_project/ui/screens/login.dart';
import 'package:flutter_project/ui/widgets/app_text_field_widget.dart';
import 'package:flutter_project/ui/widgets/screen_background_widget.dart';
import 'package:flutter_project/ui/utils/text_styles.dart';

import '../utils/text_below_button_styles.dart';
import '../widgets/app_elevated_button.dart';

class VerifyWithEmailScreen extends StatefulWidget {
  const VerifyWithEmailScreen({Key? key}) : super(key: key);

  @override
  State<VerifyWithEmailScreen> createState() => _VerifyWithEmailScreenState();
}

class _VerifyWithEmailScreenState extends State<VerifyWithEmailScreen> {
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
                  'Your Email Address',
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
                AppTextFieldWidget(
                    hintText: 'Email', controller: TextEditingController()),
                const SizedBox(
                  height: 24,
                ),
                AppElevatedButton(
                    child: Icon(Icons.arrow_circle_right_outlined),
                    onTap: () {}),
                const SizedBox(height: 8),
                text_below_below_styles(
                  text1: 'Have account?',
                  text2: 'Sign in',
                  ontap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()));
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
