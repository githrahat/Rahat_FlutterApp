import 'package:flutter/material.dart';
import 'package:flutter_firebase_project/UI/Screens/home_screen.dart';
import 'package:get/get.dart';
import '../utils/app_colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2)).then((value){
      print('rrr');
      Get.to(const HomeScreen());
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(child: Center(
            child:Image.asset(
                'assets/images/logo.png',
                width: 120),
          ),
          ),
          Column(
            children: const[
              CircularProgressIndicator(
                color: primaryColor,
              ),
              Padding(
                  padding: EdgeInsets.all(16.0),
                    child: Text('Version: 0.1',
                      style: TextStyle(color: greyColor,
                        fontSize: 12,
                        letterSpacing: 0.6
                    ),),
          )
            ],
          )
        ],
      ),
    );
  }
}
