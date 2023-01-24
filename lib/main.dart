import 'package:flutter/material.dart';

main() {
  // projects entry point
  runApp(
      HelloWorldApp()); //HelloWorldApp is an application which is put on the runApp widget.
}

class HelloWorldApp extends StatelessWidget {
  //HelloWorldApp class becomes a widget after using extends means it inherts from statelesswidget
  @override
  Widget build(BuildContext context) {
    return MaterialApp( //MaterialApp is a predifine class of flutter which indicates to set the apps ui / apps theme. Its also a core component of Flutter
      /// property/attributes : home,appbar
      // Scaffold is a class in flutter which provides many widgets

      // These are the settings of MaterialApp, by which we control the application
        debugShowCheckedModeBanner: false,
        //removes the debugshowcheckmodeBanner
        theme: ThemeData(primarySwatch: Colors.amber),
        // sets the color of theme
        darkTheme: ThemeData(primarySwatch: Colors.brown),
        // sets the color of the darkTheme
        color: Colors.green,
        // sets the primary color

        home: homeactivity()
    );
  }
}

class homeactivity extends StatelessWidget {

  //const homeactivity({Key? key}) : super(key: key);
  TextEditingController controller = TextEditingController();

  MySnackbar(message, context) {
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
            IconButton(onPressed: () {
              MySnackbar("Account", context);
            }, icon: Icon(Icons.account_circle_sharp)),
            IconButton(onPressed: () {
              MySnackbar("Alarm", context);
            }, icon: Icon(Icons.access_alarm_rounded)),
            IconButton(onPressed: () {
              MySnackbar("Comment", context);
            }, icon: Icon(Icons.comment))
          ],
        ),

        // it floats in the centre
        //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
        onPressed: (){
          showDialog(context: context, builder: (context){
            return AlertDialog(
              title: Text('Have you read our conditions?'),
              content: Text('Everysingle of them'),
              actions: [
                TextButton(onPressed: (){}, child: Text('YES')),
                TextButton(onPressed: (){}, child: Text('NO'))
              ],
            );
          });
        },
        child: Icon(Icons.play_arrow),
          /*
           For showing any text in the floatingActionButton

          floatingActionButton: FloatingActionButton.extended(
            onPressed: (){},
            label: Text('Press'),
           */
    ),
    );
  }
}
