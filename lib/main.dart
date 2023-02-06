
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

      // LayoutBuilder - shows maxwidth, minwidth, maxheight, minheight.
      // Even if make our screen responsive or small/large that time it shows too.
      body: LayoutBuilder(
        builder: (context, constraints){
          print(constraints.maxWidth);
          print(constraints.minWidth);
          print(constraints.maxHeight);
          print(constraints.minWidth);
          return Center(
            child: Column(
            children:[
              Text(constraints.maxWidth.toString()),
              Text(constraints.minWidth.toString()),
              Text(constraints.maxHeight.toString()),
              Text(constraints.minHeight.toString()),
            ]
            // showing maxwidth, minwidth, maxheight, minheight in screen. Also, whenever we resize our screen small or large maxwidth also changes too.

          )
          );
        }
      ),

    );
  }
}