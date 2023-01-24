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
        theme: ThemeData(primarySwatch: Colors.purple), // sets the color of theme
        darkTheme: ThemeData(primarySwatch: Colors.purple), // sets the color of the darkTheme
        color: Colors.purple, // sets the primary color

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
        title: Text('Welcome'),
        titleSpacing: 50,
        centerTitle: true,
        toolbarHeight: 70,
        toolbarOpacity: 1,
        elevation: 0,
        backgroundColor: Colors.purple,

        actions: [
          IconButton(onPressed: (){MySnackbar("Search", context);}, icon: Icon(Icons.search))
        ],
      ),

      drawer: Drawer(
        // for converting it into endDrawer, it needs to be endDrawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                padding: EdgeInsets.all(0),
                child: UserAccountsDrawerHeader(

                  decoration: BoxDecoration(
                    color: Colors.purple,
                  ),
                  accountName: Text('SwanDesignInternational'),
                  accountEmail: Text('info@swandesigninternational.com'),
                  currentAccountPicture: Image.network('data:image/jpeg;base64,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'),
                )),

            ListTile(leading:Icon(Icons.home),
                title: Text('Home'),
                onTap: (){}),
            ListTile(leading:Icon(Icons.account_box),
                title: Text('About'),
                onTap: (){}),
            ListTile(leading:Icon(Icons.add_box),
                title: Text('Products'),
                onTap: (){}),
            ListTile(leading:Icon(Icons.reviews_outlined),
                title: Text('Review'),
                onTap: (){}),
            ListTile(leading:Icon(Icons.browse_gallery),
                title: Text('Gallery'),
                onTap: (){}),
            ListTile(leading:Icon(Icons.phone),
                title: Text('Contact'),
                onTap: (){}),

          ],
        ),
      ),
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
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  foregroundColor: Colors.white,
                  textStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                  ),
                  padding: EdgeInsets.all(20),
                ),            onPressed: (){
              showDialog(context: context, builder: (context){
                return AlertDialog(
                  title: Text('OFFICIAL MEMBERS'),
                  content: Text('Are you a official member?'),
                  actions: [
                    TextButton(onPressed: (){}, child: Text('YES')),
                    TextButton(onPressed: (){}, child: Text('NO'))
                  ],
                );
              });
            }, child: Text('Know More')),
          ],
        ),
      ),
    );
  }
}