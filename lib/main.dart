import 'package:flutter/material.dart'; // Libary File

/// main() -> Entry points of code
/// runApp() -> Entry points of Apps
/// MaterialApp, Scaffold, AppBar, Text etc are 'class / Widgets'
/// home: , appBar: , title: etc are called 'property / attributes'
///


main() { // projects entry point
  runApp(HelloWorldApp()); //HelloWorldApp is an application which is put on the runApp widget.
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
