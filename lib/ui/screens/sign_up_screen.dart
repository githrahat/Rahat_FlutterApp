import 'package:flutter/material.dart';
import 'package:flutter_project/ui/utils/text_styles.dart';
import 'package:flutter_project/ui/widgets/app_elevated_button.dart';
import 'package:flutter_project/ui/widgets/app_text_field_widget.dart';

import '../utils/text_below_button_styles.dart';
import '../widgets/screen_background_widget.dart';
import 'login.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: [
                  const SizedBox(height: 32),
                  Text(
                    'Join with us',
                    style: screenTitleStyle,
                  ),
                  const SizedBox(height: 24),
                  AppTextFieldWidget(
                      hintText: 'Email', controller: TextEditingController()),
                  const SizedBox(height: 8),
                  AppTextFieldWidget(
                      hintText: 'First Name',
                      controller: TextEditingController()),
                  const SizedBox(height: 8),
                  AppTextFieldWidget(
                      hintText: 'Last Name',
                      controller: TextEditingController()),
                  const SizedBox(height: 8),
                  AppTextFieldWidget(
                      hintText: 'Mobile', controller: TextEditingController()),
                  const SizedBox(height: 8),
                  AppTextFieldWidget(
                      hintText: 'Password',
                      controller: TextEditingController()),
                  const SizedBox(height: 8),
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
      ),
    );
  }
}
