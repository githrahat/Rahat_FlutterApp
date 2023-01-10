import 'package:flutter/material.dart'; // Libary File

/// projects' entry point
/// SKIA / Impeller
///
main() {
  runApp(HelloWorldApp()); //HelloWorldApp is an application which is put on the runApp function.
}

class HelloWorldApp extends StatelessWidget { //HelloWorldApp class becomes a widget after using extends means it inherts from statelesswidget
  @override
  Widget build(BuildContext context) {
    return MaterialApp( //MaterialApp is a predifine class of flutter which indicates to set the apps ui / apps theme
      /// property/attributes : home,appbar
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 8,
          title: Text('Hello'),
        ),
        body: Text('Hello'),
      ),
    );
  }
}
