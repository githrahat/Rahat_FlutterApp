import 'package:flutter/material.dart';
import 'package:flutter_project/ui/widgets/app_elevated_button.dart';
import 'package:flutter_project/ui/widgets/app_text_field_widget.dart';
import 'package:flutter_project/ui/widgets/screen_background_widget.dart';

import '../utils/text_below_button_styles.dart';
import '../utils/text_styles.dart';
import 'login.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
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
                  'Set Password',
                  style: screenTitleStyle,
                ),
                const SizedBox(
                  height: 8,
                ),
                Text('Minimum length of password must be 6 with letters and number combination', style: screenSubTitleTextStyle),
                const SizedBox(
                  height: 24,
                ),
                const SizedBox(
                  height: 24,
                ),
                AppTextFieldWidget(
                    obscureText: true,
                    hintText: 'Password', controller: TextEditingController()),
                const SizedBox(
                  height: 24,
                ),
                AppTextFieldWidget(
                    obscureText: true,
                    hintText: 'Confirm Password',
                    controller: TextEditingController()),
                const SizedBox(
                  height: 8,
                ),
                AppElevatedButton(child: Text('Confirm'), onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                          const ResetPasswordScreen()));
                }),
                const SizedBox(
                  height: 24,
                ),
                text_below_below_styles(
                  text1: 'Have account?',
                  text2: 'Sign in',
                  ontap: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()),
                        (route) => false);
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
