import 'package:flutter/material.dart';
import 'package:flutter_project/ui/screens/sign_up_screen.dart';
import 'package:flutter_project/ui/screens/verify_with_email_screen.dart';
import 'package:flutter_project/ui/widgets/screen_background_widget.dart';

import '../utils/text_below_button_styles.dart';
import '../utils/text_styles.dart';
import '../widgets/app_elevated_button.dart';
import '../widgets/app_text_field_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Get Started With', style: screenTitleStyle),
              const SizedBox(height: 24),
              AppTextFieldWidget(
                controller: TextEditingController(),
                hintText: 'Email',
              ),
              const SizedBox(height: 16),
              AppTextFieldWidget(
                obscureText: true, // its an optional field
                controller: TextEditingController(),
                hintText: 'Password',
              ),
              const SizedBox(height: 16),
              AppElevatedButton(
                onTap: () {},
                child: const Icon(Icons.arrow_circle_right_outlined),
              ),
              const SizedBox(height: 24),
              Center(
                  child: TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => VerifyWithEmailScreen()));
                },
                child: const Text(
                  'Forgot Password?',
                  style: TextStyle(color: Colors.grey),
                ),
              )
              ),
              text_below_below_styles(
                text1: "Don't have account?",
                text2: 'Sign up',
                ontap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignUpScreen()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

