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
      return MaterialApp( //MaterialApp is a predifine class of flutter which indicates to set the apps ui / apps theme. Its also a core component of Flutter
      /// property/attributes : home,appbar
      // Scaffold is a class in flutter which provides many widgets

      // These are the settings of MaterialApp, by which we control the application
      debugShowCheckedModeBanner: false, //removes the debugshowcheckmodeBanner
      theme: ThemeData(primarySwatch: Colors.amber), // sets the color of theme
      darkTheme: ThemeData(primarySwatch: Colors.brown), // sets the color of the darkTheme
      color: Colors.green, // sets the primary color

      home: homeactivity()
    );
  }
}
class homeactivity extends StatelessWidget {
  const homeactivity({Key? key}) : super(key: key);
  MySnackbar(message, context){
    return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RahatAlam'),
        titleSpacing: 50,
        centerTitle: true,
        toolbarHeight: 70,
        toolbarOpacity: 1,
        elevation: 0,
        backgroundColor: Colors.green,
        
        actions: [
          IconButton(onPressed: (){MySnackbar("Account", context);}, icon: Icon(Icons.account_circle_sharp)),
          IconButton(onPressed: (){MySnackbar("Alarm", context);}, icon: Icon(Icons.access_alarm_rounded)),
          IconButton(onPressed: (){MySnackbar("Comment", context);}, icon: Icon(Icons.comment))
        ],
      ),

      body: SingleChildScrollView( //SingleChildScrollView is used for scrolling the screen
       child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 150,
            width: 150,
              //padding: EdgeInsets.fromLTRB(left, top, right, bottom),
             //padding: EdgeInsets.all(20),
           margin: EdgeInsets.all(20),
            alignment: Alignment.center,
            //child: Text('RahatAlam'),
            decoration: BoxDecoration(
                color: Colors.green,
                border: Border.all(color: Colors.amber, width: 6),
            ),
            child: Image.network('https://images.pexels.com/photos/918327/pexels-photo-918327.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
          ),
          Container(
            height: 150,
            width: 150,
            //padding: EdgeInsets.fromLTRB(left, top, right, bottom),
            //padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(20),
            alignment: Alignment.center,
            //child: Text('RahatAlam'),
            decoration: BoxDecoration(
              color: Colors.green,
              border: Border.all(color: Colors.amber, width: 6),
            ),
            child: Image.network('https://images.pexels.com/photos/918327/pexels-photo-918327.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
          ),
          Column(
            //crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                height: 200,
                width: 200,
                //padding: EdgeInsets.fromLTRB(left, top, right, bottom),
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(20),
                alignment: Alignment.center,
                //child: Text('RahatAlam'),
                decoration: BoxDecoration(
                  color: Colors.green,
                  border: Border.all(color: Colors.amber, width: 6),
                ),
                child: Image.network('https://images.pexels.com/photos/918327/pexels-photo-918327.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
              ),
              Container(
                height: 200,
                width: 200,
                //padding: EdgeInsets.fromLTRB(left, top, right, bottom),
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(20),
                alignment: Alignment.center,
                //child: Text('RahatAlam'),
                decoration: BoxDecoration(
                  color: Colors.green,
                  border: Border.all(color: Colors.amber, width: 6),
                ),
                child: Image.network('https://images.pexels.com/photos/918327/pexels-photo-918327.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
              )
            ],
          ),
        ],
      ),
      ),
    );
  }
}
