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

      //==================================
      // These are the settings of MaterialApp, by which we control the application
      debugShowCheckedModeBanner: false, //removes the debugshowcheckmodeBanner
      theme: ThemeData(primarySwatch: Colors.green), // sets the color of theme
      darkTheme: ThemeData(primarySwatch: Colors.green), // sets the color of the darkTheme
      color: Colors.green, // sets the primary color
      //=========================================

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
      body: Center(
        child: Text('RahatAlam'),
      ),

     floatingActionButton: FloatingActionButton(
       elevation: 20,
       backgroundColor: Colors.green,
       child: Icon(Icons.arrow_back_ios),
       onPressed: (){ 
         MySnackbar('Coming Soon', context);
       },
     ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home', backgroundColor: Colors.green),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search', backgroundColor: Colors.green),
          BottomNavigationBarItem(icon: Icon(Icons.perm_contact_calendar_sharp), label: 'Contact', backgroundColor: Colors.green),
        ],

        onTap: (int index){
          if(index==0){
            MySnackbar('Home: Work going on', context);
          }
          else if(index==1){
            MySnackbar('Search: Work going on', context);
          }
          else if(index==2){
            MySnackbar('Contact: Work going on', context);
          }
        }
      ),
    );
  }
}
