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

  TextEditingController controllerOne = TextEditingController();
  TextEditingController controllerTwo = TextEditingController();
  TextEditingController controllerThree = TextEditingController();
  TextEditingController controllerFour = TextEditingController();
  TextEditingController controllerFive = TextEditingController();

  /// SnackBar message code
  SnackBarMessage(message, context) {
    return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      /// AppBar
      appBar: AppBar(

        /// appBar
        title: Text("Mess App"),
        //titleSpacing: 15,
        centerTitle: true,
        toolbarOpacity: 1,
        toolbarHeight: 85,
        elevation: 25,
        backgroundColor: Colors.blueAccent,

        /// set action icon in appbar
        actions: [
          IconButton(
            onPressed: () {
              SnackBarMessage('Search', context);
            },
            icon: Icon(Icons.search),
          ),
          IconButton(
              onPressed: () {
                SnackBarMessage('Call', context);
              },
              icon: Icon(Icons.add_call)),
          IconButton(
              onPressed: () {
                SnackBarMessage('Settings', context);
              },
              icon: Icon(Icons.settings_applications))
        ],
      ),

      drawer: Drawer(
        child: SafeArea(
          child: Column(
            children: [
                ListTile(
                  onTap: (){
                    print('TAP');
                  },
                  onLongPress: (){
                    print('Long Press');
                  },
                  contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 12),
                  leading: Icon(Icons.add_box),
                  title: Text('Home'),
                  subtitle: Text('Welcome, and hello'),
                  tileColor: Colors.grey,
                  trailing: Icon(Icons.arrow_forward_outlined),
                )
            ],
          ),
        ),
      ),

      /// Body
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.end,
        children: [
            Card(
              elevation: 5,
              color: Colors.purple,
              shadowColor: Colors.indigoAccent,
              margin: EdgeInsets.all(20),

              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
                //side: BorderSide.lerp(a, b, t)
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text('Business Card', style: TextStyle(color: Colors.white),),
              ),
            ),
          Row(
            children: [
              Radio(value: 'Male', groupValue: 'gender', onChanged: (value){}),
              Text('Male'),
              Radio(value: 'Female', groupValue: 'genderf', onChanged: (value){}),
              Text('Female'),
            ],
          ),
          Row(
            children: [
              Checkbox(value: true, onChanged: (value){}),
              Text('HTML'),
              Checkbox(value: false, onChanged: (value){}),
              Text('CSS'),
              Checkbox(value: true, onChanged: (value){}),
              Text('JAVA'),
            ],
          ),
          Row(
            children: [
              Switch(value: true, onChanged: (value){}),
              Text('Light Bulb'),
            ],
          )
        ],

      ),


    );
  }
}