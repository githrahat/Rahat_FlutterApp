import 'package:flutter/material.dart';
import 'UI/Screens/splash_screen.dart';
import 'package:get/get.dart';

void main(){
  runApp( const CraftyBay());
}

class CraftyBay extends StatelessWidget {
  const CraftyBay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: SplashScreen(),

    );
  }
}
