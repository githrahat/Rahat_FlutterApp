
import 'package:flutter/material.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AppsHome(),
    );
  }
}

class AppsHome extends StatelessWidget {
  AppsHome({Key? key}) : super(key: key);

  /// SnackBar message code
  SnackBarMessage(message, context) {
    return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message))
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Text("Home Page"),
          //titleSpacing: 15,
          centerTitle: true,
          toolbarOpacity: 1,
          elevation: 15,
          backgroundColor: Colors.blueAccent,

          /// set action icon in appbar
          actions: [
            IconButton(
              onPressed: () {
                SnackBarMessage('Search', context);
              },
              icon: Icon(Icons.search),
            ),
          ],
        ),

      // it gets large and small when screen is resized
        // heightFactor and widthFactor starts from, 1 which is equal to 100%
      body: FractionallySizedBox(
        heightFactor: 2,
        widthFactor: .5,
        child: Container(
          color: Colors.deepOrange,
        ),
      )
    );
  }
}