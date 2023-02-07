
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
          title: Text("Responsive Design"),
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

      body: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text('Rahat'),
              Text('Rahat'),
              Text('Rahat'),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Text('Alam'),
                  Text('Alam'),
                  Text('Alam'),
                  Text('Alam'),
                  Text('Alam'),
                  Text('Alam'),
                  Text('Alam'),
                  Text('Alam'),
                  Text('Alam'),
                  Text('Alam'),
                  Text('Alam'),
                  Text('Alam'),
                  Text('Alam'),
                  Text('Alam'),
                  Text('Alam'),
                  Text('Alam'),
                  Text('Alam'),

                ],
              ),
              ),
              Text('Rahat'),
              Text('Rahat'),
              Text('Rahat'),
              Text('Rahat'),
              Text('Rahat'),
              Text('Rahat'),
              Text('Rahat'),
              Text('Rahat'),
              Text('Rahat'),
              Text('Rahat'),
              Text('Rahat'),
              Text('Rahat'),
              Text('Rahat'),
              Text('Rahat'),
              Text('Rahat'),
              Text('Rahat'),
              Text('Rahat'),
              Text('Rahat'),
              Text('Rahat'),
              Text('Rahat'),
              Text('Rahat'),
              Text('Rahat'),
              Text('Rahat'),
              Text('Rahat'),
              Text('Rahat'),
              Text('Rahat'),
              Text('Rahat'),
              Text('Rahat'),
              Text('Rahat'),
              Text('Rahat'),
              Text('Rahat'),
              Text('Rahat'),
              Text('Rahat'),
              Text('Rahat'),
              Text('Rahat'),
              Text('Rahat'),
              Text('Rahat'),
              Text('Rahat'),
              Text('Rahat'),
              Text('Rahat'),
              Text('Rahat'),
              Text('Rahat'),
            ],
          ),
        ),
      )
    );
  }
}