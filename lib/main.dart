
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

      body: Column(
        children: [
          /*It has two properties loose or tight.
          when in loose, it take space which is specified
          when in tight, it takes all space.
          */
          Flexible(
            fit: FlexFit.tight,
            flex: 2,
            child: Container(
              height: 200,
              width: 200,
              color: Colors.deepOrange,
            ),
          ),
          Flexible(
            fit: FlexFit.tight,
            flex: 1,
            child: Container(
              height: 200,
              width: 200,
              color: Colors.purple,
            ),
          )

          // It works just like flexible, difference is its by deafult set in Tight
          /*
        Expanded(
          child: Container(
          height: 200,
          width: 200,
            color: Colors.deepOrange,
          ),
        )
           */
        ],
      )
    );
  }
}