
import 'package:flutter/material.dart';
import '../utils/styles.dart';
import '../widgets/common_elevated_button.dart';
import '../widgets/common_text_field.dart';

class EmailVerificationScreen extends StatefulWidget {
  const EmailVerificationScreen({Key? key}) : super(key: key);

  @override
  State<EmailVerificationScreen> createState() => _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/logo.png',
              height: 80, width: 80,
            ),
            const SizedBox(height: 16,),
            Text('Welcome Back',
              style: titleTextStyle,
            ),
            const SizedBox(height: 4,),
            Text('Please Enter Your Email Address:',
              style: subtitleTextStyle,
            ),
            const SizedBox(height: 16,),
            CommonTextField(
              controller: TextEditingController(), validator: (String? value) {  },
              hinttext: 'Email Address',
              textInputType: TextInputType.emailAddress,
            ),
            const SizedBox(
              height: 16,
            ),
            CommonElevatedButton(
              title: 'Next',
              onTap: (){},
            )
          ],
        ),
      ),
    );
  }
}

