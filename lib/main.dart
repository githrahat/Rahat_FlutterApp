import 'dart:ui';

import 'package:flutter/material.dart';
main(){
  runApp(mainApp());
}
class mainApp extends StatelessWidget{
  const mainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: productpage());
  }
}


class productpage extends StatelessWidget{
  productpage({super.key});

  var products=[
    {"productname":"01. Business Card","productdetails":"Good"},
    {"productname":"02. Menu Card","productdetails":"Good"},
    {"productname":"03. Takeaway Menu","productdetails":"Good"},
    {"productname":"04. In Menu","productdetails":"Good"},
    {"productname":"05. Logo Design","productdetails":"Good"},
    {"productname":"06. Banner","productdetails":"Good"},
    {"productname":"07. Festoon","productdetails":"Good"},
    {"productname":"08. Leaflet","productdetails":"Good"},

  ];

  MySnackBar(message, context){
    return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message)));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Products', style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.normal), ),
        centerTitle: true,
        titleSpacing: 20,
        elevation: 20,
        toolbarHeight: 60,
        backgroundColor: Colors.purple,
        actions: [
          IconButton(onPressed: (){MySnackBar('Work going on', context);}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){MySnackBar('Work going on', context);}, icon: Icon(Icons.perm_contact_cal))
        ],
      ),

      drawer: Drawer(
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
                  currentAccountPicture: Image.network('https://w7.pngwing.com/pngs/361/627/png-transparent-leaf-logo-green-leaves-green-and-teal-leaf-logo-text-maple-leaf-grass.png'),
                )),

            ListTile(leading:Icon(Icons.home),
                title: Text('Home'),
                onTap: (){}),
            ListTile(leading:Icon(Icons.account_box),
                title: Text('About'),
                onTap: (){}),
            ListTile(leading:Icon(Icons.add_box),
                title: Text('Products'),
                subtitle: Text('Business Card, Menu Card, Banner and many more.'),
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

      body: ListView.separated(
        itemCount: products.length,
        itemBuilder: (context, index){
          return GestureDetector(
              onTap: (){
                if(index == 0){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => buisnesscard(name: 'Rahat',)));
                }
                else if(index == 1){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => menucard(name: 'Rahat',)));
                }
                else if(index == 2){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => takeawaymenu(name: 'Rahat',)));
                }
                else if(index == 3){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => inmenu(name: 'Rahat',)));
                }
                else if(index == 4){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => logodesign(name: 'Rahat',)));
                }
                else if(index == 5){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => banner(name: 'Rahat',)));
                }
                else if(index == 6){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => festoon(name: 'Rahat',)));
                }
                else if(index == 7){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => leaflet(name: 'Rahat',)));
                }
              },
              child: Container(
                margin: EdgeInsets.all(10),

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.purple,
                ),
                child: ListTile(
                  leading: Icon(Icons.map_outlined, color: Colors.white,),
                  title: Text(products[index]["productname"]!, style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16, color: Colors.white),),
                  subtitle: Text(products[index]["productdetails"]!,style: TextStyle(color: Colors.white),),
                  trailing: Icon(Icons.arrow_forward_outlined),
                ),
              )
          );
        }, separatorBuilder: (BuildContext context, int index) {
        return Divider(
          thickness: 5,
          height: 30,
          color: Colors.grey,
        );
      },
      ),
    );
  }
}

// buisness card section
class buisnesscard extends StatelessWidget {
  String name;
  buisnesscard({required this.name, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Business Card'),
        backgroundColor: Colors.purple,
        centerTitle: true,
      ),

      drawer: Drawer(
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
                  currentAccountPicture: Image.network('https://w7.pngwing.com/pngs/361/627/png-transparent-leaf-logo-green-leaves-green-and-teal-leaf-logo-text-maple-leaf-grass.png'),
                )),

            ListTile(leading:Icon(Icons.home),
                title: Text('Home'),
                onTap: (){}),
            ListTile(leading:Icon(Icons.account_box),
                title: Text('About'),
                onTap: (){}),
            ListTile(leading:Icon(Icons.add_box),
                title: Text('Products'),
                subtitle: Text('Business Card, Menu Card, Banner and many more.'),
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

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListTile(
              title: Text('Buisness Card', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
              subtitle: Text('Swan Design creates stylish, perfect balance of a quality business card at a sensible price', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),),
            ),
            Image.network('https://cdn.dribbble.com/users/7111344/screenshots/18144613/media/b28a3a8927554f5ae207f1cff47d9dda.jpg?compress=1&resize=400x300'),
            Container(
              margin: EdgeInsets.all(10),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple,
                      foregroundColor: Colors.white,
                      elevation: 8,
                      padding: EdgeInsets.all(20),
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.w300,
                      )),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Go Back')
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// menu card page
class menucard extends StatelessWidget {
  String name;
  menucard({required this.name, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu Card'),
        backgroundColor: Colors.purple,
        centerTitle: true,
      ),

      drawer: Drawer(
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
                  currentAccountPicture: Image.network('https://w7.pngwing.com/pngs/361/627/png-transparent-leaf-logo-green-leaves-green-and-teal-leaf-logo-text-maple-leaf-grass.png'),
                )),

            ListTile(leading:Icon(Icons.home),
                title: Text('Home'),
                onTap: (){}),
            ListTile(leading:Icon(Icons.account_box),
                title: Text('About'),
                onTap: (){}),
            ListTile(leading:Icon(Icons.add_box),
                title: Text('Products'),
                subtitle: Text('Business Card, Menu Card, Banner and many more.'),
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

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListTile(
              title: Text('Menu Card', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
              subtitle: Text('Swan Design creates stylish, colourful, vibrant, traditional and contemporary restaurant menus and a full line of services to help customers', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),),
            ),
            Image.network('https://img.freepik.com/free-vector/modern-restaurant-menu-fast-food_52683-48982.jpg?w=2000'),
            Container(
              margin: EdgeInsets.all(10),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple,
                      foregroundColor: Colors.white,
                      elevation: 8,
                      padding: EdgeInsets.all(20),
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.w300,
                      )),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Go Back')
              ),
            ),
          ],
        ),
      ),
    );
  }
}


// takeawaymenu page
class takeawaymenu extends StatelessWidget {
  String name;
  takeawaymenu({required this.name, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Takeaway Menu'),
        backgroundColor: Colors.purple,
        centerTitle: true,
      ),

      drawer: Drawer(
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
                  currentAccountPicture: Image.network('https://w7.pngwing.com/pngs/361/627/png-transparent-leaf-logo-green-leaves-green-and-teal-leaf-logo-text-maple-leaf-grass.png'),
                )),

            ListTile(leading:Icon(Icons.home),
                title: Text('Home'),
                onTap: (){}),
            ListTile(leading:Icon(Icons.account_box),
                title: Text('About'),
                onTap: (){}),
            ListTile(leading:Icon(Icons.add_box),
                title: Text('Products'),
                subtitle: Text('Business Card, Menu Card, Banner and many more.'),
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

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListTile(
              title: Text('Takeaway Menu', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
              subtitle: Text('Swan Design creates stylish, colourful, vibrant, traditional and contemporary restaurant menus and a full line of services to help customers', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),),
            ),
            Image.network('https://img.freepik.com/free-vector/burgers-restaurant-menu-template_23-2149005028.jpg?w=2000'),
            Container(
              margin: EdgeInsets.all(10),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple,
                      foregroundColor: Colors.white,
                      elevation: 8,
                      padding: EdgeInsets.all(20),
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.w300,
                      )),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Go Back')
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Inmenu page
class inmenu extends StatelessWidget {
  String name;
  inmenu({required this.name, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('InMenu Card'),
        backgroundColor: Colors.purple,
        centerTitle: true,
      ),

      drawer: Drawer(
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
                  currentAccountPicture: Image.network('https://w7.pngwing.com/pngs/361/627/png-transparent-leaf-logo-green-leaves-green-and-teal-leaf-logo-text-maple-leaf-grass.png'),
                )),

            ListTile(leading:Icon(Icons.home),
                title: Text('Home'),
                onTap: (){}),
            ListTile(leading:Icon(Icons.account_box),
                title: Text('About'),
                onTap: (){}),
            ListTile(leading:Icon(Icons.add_box),
                title: Text('Products'),
                subtitle: Text('Business Card, Menu Card, Banner and many more.'),
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

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListTile(
              title: Text('InMenu Card', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
              subtitle: Text('Swan Design creates stylish, colourful, vibrant, traditional and contemporary restaurant menus and a full line of services to help customers', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),),
            ),
            Image.network('https://img.freepik.com/free-vector/beautiful-food-menu-design-template_23-2149061881.jpg?w=2000'),
            Container(
              margin: EdgeInsets.all(10),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple,
                      foregroundColor: Colors.white,
                      elevation: 8,
                      padding: EdgeInsets.all(20),
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.w300,
                      )),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Go Back')
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// logodesign page
class logodesign extends StatelessWidget {
  String name;
  logodesign({required this.name, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Logo Design'),
        backgroundColor: Colors.purple,
        centerTitle: true,
      ),

      drawer: Drawer(
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
                  currentAccountPicture: Image.network('https://w7.pngwing.com/pngs/361/627/png-transparent-leaf-logo-green-leaves-green-and-teal-leaf-logo-text-maple-leaf-grass.png'),
                )),

            ListTile(leading:Icon(Icons.home),
                title: Text('Home'),
                onTap: (){}),
            ListTile(leading:Icon(Icons.account_box),
                title: Text('About'),
                onTap: (){}),
            ListTile(leading:Icon(Icons.add_box),
                title: Text('Products'),
                subtitle: Text('Business Card, Menu Card, Banner and many more.'),
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

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListTile(
              title: Text('Logo Design', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
              subtitle: Text('Here at Swan Design, we take care a logo from an extremely essential pencil sketch to the last print or web prepared fine art.', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),),
            ),
            Image.network('https://png.pngtree.com/element_our/png/20180912/coffee-time-png_91570.jpg'),
            Container(
              margin: EdgeInsets.all(10),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple,
                      foregroundColor: Colors.white,
                      elevation: 8,
                      padding: EdgeInsets.all(20),
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.w300,
                      )),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Go Back')
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// banner page
class banner extends StatelessWidget {
  String name;
  banner({required this.name, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Banner'),
        backgroundColor: Colors.purple,
        centerTitle: true,
      ),

      drawer: Drawer(
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
                  currentAccountPicture: Image.network('https://w7.pngwing.com/pngs/361/627/png-transparent-leaf-logo-green-leaves-green-and-teal-leaf-logo-text-maple-leaf-grass.png'),
                )),

            ListTile(leading:Icon(Icons.home),
                title: Text('Home'),
                onTap: (){}),
            ListTile(leading:Icon(Icons.account_box),
                title: Text('About'),
                onTap: (){}),
            ListTile(leading:Icon(Icons.add_box),
                title: Text('Products'),
                subtitle: Text('Business Card, Menu Card, Banner and many more.'),
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

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListTile(
              title: Text('Banner', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
              subtitle: Text('As our expansion of the products and services we have now in a position to arrange any signage from now on', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),),
            ),
            Image.network('https://img.freepik.com/free-psd/digital-marketing-facebook-banner-template_237398-233.jpg?w=2000'),
            Container(
              margin: EdgeInsets.all(10),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple,
                      foregroundColor: Colors.white,
                      elevation: 8,
                      padding: EdgeInsets.all(20),
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.w300,
                      )),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Go Back')
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// festoon page
class festoon extends StatelessWidget {
  String name;
  festoon({required this.name, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Festoon'),
        backgroundColor: Colors.purple,
        centerTitle: true,
      ),

      drawer: Drawer(
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
                  currentAccountPicture: Image.network('https://w7.pngwing.com/pngs/361/627/png-transparent-leaf-logo-green-leaves-green-and-teal-leaf-logo-text-maple-leaf-grass.png'),
                )),

            ListTile(leading:Icon(Icons.home),
                title: Text('Home'),
                onTap: (){}),
            ListTile(leading:Icon(Icons.account_box),
                title: Text('About'),
                onTap: (){}),
            ListTile(leading:Icon(Icons.add_box),
                title: Text('Products'),
                subtitle: Text('Business Card, Menu Card, Banner and many more.'),
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

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListTile(
              title: Text('Festoon', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
              subtitle: Text('As our expansion of the products and services we have now in a position to arrange any festoon from now on', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),),
            ),
            Image.network('https://i.ytimg.com/vi/neXk3we-y6E/maxresdefault.jpg'),
            Container(
              margin: EdgeInsets.all(10),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple,
                      foregroundColor: Colors.white,
                      elevation: 8,
                      padding: EdgeInsets.all(20),
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.w300,
                      )),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Go Back')
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// leaflet
class leaflet extends StatelessWidget {
  String name;
  leaflet({required this.name, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Leaflet'),
        backgroundColor: Colors.purple,
        centerTitle: true,
      ),

      drawer: Drawer(
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
                  currentAccountPicture: Image.network('https://w7.pngwing.com/pngs/361/627/png-transparent-leaf-logo-green-leaves-green-and-teal-leaf-logo-text-maple-leaf-grass.png'),
                )),

            ListTile(leading:Icon(Icons.home),
                title: Text('Home'),
                onTap: (){}),
            ListTile(leading:Icon(Icons.account_box),
                title: Text('About'),
                onTap: (){}),
            ListTile(leading:Icon(Icons.add_box),
                title: Text('Products'),
                subtitle: Text('Business Card, Menu Card, Banner and many more.'),
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

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListTile(
              title: Text('Leaflet', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
              subtitle: Text('As our expansion of the products and services we have now in a position to arrange any leaflet from now on.', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),),
            ),
            Image.network('https://images.template.net/wp-content/uploads/2022/06/Leaflet.jpg'),
            Container(
              margin: EdgeInsets.all(10),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple,
                      foregroundColor: Colors.white,
                      elevation: 8,
                      padding: EdgeInsets.all(20),
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.w300,
                      )),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Go Back')
              ),
            ),
          ],
        ),
      ),
    );
  }
}