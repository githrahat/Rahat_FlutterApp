
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

    // Media Query - to show the width and height of the screen also the aspect ratio.
    Size size = MediaQuery.of(context).size;
    print(size.width);
    print(size.height);
    print(size.aspectRatio);

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

        body:Center(
          child: Text('Hello App'),
        )

    );
  }
}