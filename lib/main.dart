import 'package:flutter/material.dart';

main() {
  runApp(HelloWorldApp());
}

class HelloWorldApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /// property/attributes : home,appbar

      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.amber),
      darkTheme: ThemeData(primarySwatch: Colors.brown),
      color: Colors.green,

      home: homeactivity()
    );

  }
}
class homeactivity extends StatelessWidget {
  const homeactivity({Key? key}) : super(key: key);

  MySnackBar(message,context){
    return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
        titleSpacing: 50,
        //centerTitle: true,
        toolbarHeight: 70,
        toolbarOpacity: 1,
        elevation: 0,
        backgroundColor: Colors.green,

        actions: [
          IconButton(onPressed: (){
            MySnackBar("Account", context);},
              icon: Icon(Icons.account_circle_sharp)),
          IconButton(onPressed: (){
            MySnackBar("Wallet", context);},
              icon: Icon(Icons.account_balance_wallet)),
          IconButton(onPressed: (){
            MySnackBar("Comment", context);},
              icon: Icon(Icons.comment))
        ],
      ),
    );
  }
}
